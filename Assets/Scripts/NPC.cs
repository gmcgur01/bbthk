using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour
{
    public TextTrigger dialouge_trigger;

    private TextManager tm;
    private DialougePrompt dp;

    private bool inRange = false;

    // Start is called before the first frame update
    void Start()
    {
        tm = FindObjectOfType<TextManager>();
        dp = FindObjectOfType<DialougePrompt>();
    }

    // Update is called once per frame
    void Update()
    {
        if(inRange && !tm.dialougeActive){
            dp.ActivatePrompt();
            if(Input.GetButtonDown("Submit")){
                dialouge_trigger.TriggerText();
            }
        }
    }

    void OnTriggerEnter2D(Collider2D col){
        if(col.gameObject.tag == "Player"){
            inRange = true;
        }
    }

    void OnTriggerExit2D(Collider2D col){
        if(col.gameObject.tag == "Player"){
            inRange = false;
            dp.DeactivatePrompt(false);
        }
    }
}
