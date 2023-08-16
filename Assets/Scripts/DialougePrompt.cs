using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialougePrompt : MonoBehaviour
{
    private Animator anim;
    private TextManager tm;
    private bool isActive = false;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        tm = FindObjectOfType<TextManager>();
    }

    // Update is called once per frame
    void Update()
    {
        if(tm.dialougeActive){
            DeactivatePrompt(true);
        }
    }

    public void ActivatePrompt(){
        if(!tm.dialougeActive && !isActive){
            isActive = true;
            anim.SetBool("isActive", true);
        }
    }

    public void DeactivatePrompt(bool fast){
        isActive = false;
        anim.SetBool("fastClose", fast);
        anim.SetBool("isActive", false);

    }


}
