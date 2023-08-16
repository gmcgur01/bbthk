using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextTrigger : MonoBehaviour
{

    public string speaker;
    public string portrait;
    public TextAsset inkJSON;

    public void TriggerText() {
        FindObjectOfType<TextManager>().StartDialouge(speaker, portrait, inkJSON);
    }
}
