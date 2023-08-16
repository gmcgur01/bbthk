using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

public class TextManager : MonoBehaviour
{
    public static TextManager instance;

    private Story currentStory;
    private string currSentence = "";

    public Text nameText;
    public Text dialougeText;
    public Animator anim;

    [SerializeField] private Animator portraitAnimator;

    public bool dialougeActive = false;
    private bool readingText = false;
    private bool readingInput = false;
    private Coroutine read_text;

    [Header("Choices UI")]

    [SerializeField] private GameObject[] choices;
    private Text[] choicesText;

    private const string SPEAKER_TAG = "speaker";
    private const string PORTRAIT_TAG = "portrait";

    private DialogueVariables dialogueVariables;

    [Header("Load Globals JSON")]
    [SerializeField] private TextAsset loadGlobalsJSON;

    void Awake()
    {
        if(instance != null){
            Debug.LogWarning("Found more than one Text Managers in the scene.");
        }
        instance = this;

        dialogueVariables = new DialogueVariables(loadGlobalsJSON);
    }

    void Start()
    {
        //sentences = new List<string>();
        choicesText = new Text[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<Text>();
            index++;
        }
    }

    void Update()
    {
        if(readingInput){
            if(Input.GetButtonDown("Submit")){
                GoNext();
            }
        }

    }

    public static TextManager GetInstance(){
        return instance;
    }


    public void StartDialouge(string speaker, string portrait, TextAsset inkJSON)
    {
        if(dialougeActive){
            return;
        }
        dialougeActive = true;

        dialougeText.text = "";
        nameText.text = speaker;
        portraitAnimator.Play(portrait);

        currentStory = new Story(inkJSON.text);

        dialogueVariables.StartListening(currentStory);

        anim.SetTrigger("StartText");
        StartCoroutine(WaitAndDisplay());

    }


    void DisplaySentence(bool fast, string sentence)
    {
        if(fast){
            dialougeText.text = sentence;
            DisplayChoices();
        } else {
            read_text = StartCoroutine(ReadText(sentence));
        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("Too many choices were given. Number of choices given: "
                           + currentChoices.Count);
        }
        int index = 0;
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        for (int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }

        StartCoroutine(SelectFirstChoice());
    }

    private IEnumerator SelectFirstChoice()
    {
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0].gameObject);
    }

    public void MakeChoice(int choiceIndex)
    {
        currentStory.ChooseChoiceIndex(choiceIndex);

        for (int i = 0; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }
    }


    void GoNext()
    {
        if (readingText){
            StopCoroutine(read_text);
            readingText = false;
            DisplaySentence(true, currSentence);
        } else {
            if(currentStory.canContinue){
                currSentence = currentStory.Continue();
                DisplaySentence(false, currSentence);

                HandleTags(currentStory.currentTags);
            } else {
                StartCoroutine("EndDialouge");
            }

        }
    }

    private void HandleTags(List<string> currentTags)
    {
        foreach (string tag in currentTags)
        {
            string[] splitTag = tag.Split(':');
            if (splitTag.Length != 2)
            {
                Debug.LogError("Tag could not be appropriately parsed: " + tag);
            }

            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            switch (tagKey)
            {
                case SPEAKER_TAG:
                    nameText.text = tagValue;
                    break;
                case PORTRAIT_TAG:
                    portraitAnimator.Play(tagValue);
                    break;
                case "loadScene":
                    SceneManager.LoadScene(tagValue);
                    break;
                default:
                    Debug.LogWarning("Tag came in but is not currently being handled: " + tagKey);
                    break;
            }
        }
    }

    public Ink.Runtime.Object GetVariableState(string variableName)
    {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue);
        if (variableValue == null)
        {
            Debug.LogWarning("Ink Variable was found to be null: " + variableName);
        }
        return variableValue;
    }


    IEnumerator EndDialouge()
    {
        dialougeText.text = "";
        anim.SetTrigger("EndText");

        dialogueVariables.StopListening(currentStory);

        yield return new WaitForSeconds(.1f);

        dialougeActive = false;
        readingInput = false;
    }


    IEnumerator ReadText(string s)
    {
        readingText = true;

        string sentence = "";
        int currChar = 0;

        while(currChar < s.Length)
        {
            sentence = sentence + s[currChar];
            dialougeText.text = sentence;
            currChar++;
            yield return new WaitForSeconds(.02f);
        }

        DisplayChoices();

        readingText = false;
    }

    IEnumerator WaitAndDisplay()
    {
        yield return new WaitForSeconds(.5f);
        GoNext();
        readingInput = true;
    }
}
