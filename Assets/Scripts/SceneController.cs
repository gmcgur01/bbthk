using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour
{
    [SerializeField] private bool readingInput;
    [SerializeField] private string nextSceneName;

    void Update()
    {
        if (readingInput)
        {
            if (Input.GetButtonDown("Submit")){
                LoadScene(nextSceneName);
            }
        }
    }

    public void LoadScene(string nextScene)
    {
        SceneManager.LoadScene(nextScene);
    }

    public void QuitGame()
    {
        #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
        #else
        Application.Quit();
        #endif
    }
}
