using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    private Rigidbody2D rb;
    private TextManager tm;
    private Vector2 moveInput;

    public float moveSpeed;
    public bool canMove = true;

    private bool lookingLeft = true;
    public Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        tm = FindObjectOfType<TextManager>();
    }

    // Update is called once per frame
    void Update()
    {
        if(tm.dialougeActive){
            canMove = false;
        } else {
            canMove = true;
        }


        if (canMove){
			moveInput.x = Input.GetAxisRaw("Horizontal");
			moveInput.y = Input.GetAxisRaw("Vertical");
            moveInput = moveInput.normalized;
        } else {
    		moveInput.x = 0;
    		moveInput.y = 0;
        }
    }

    void FixedUpdate()
    {
        rb.velocity = new Vector2(moveInput.x * moveSpeed, moveInput.y * moveSpeed);
        if(rb.velocity.x == 0 && rb.velocity.y == 0){
            anim.SetBool("isWalking", false);
        } else {
            anim.SetBool("isWalking", true);
        }

        if(rb.velocity.x > 0 && lookingLeft){
            Flip();
            lookingLeft = false;
        } else if (rb.velocity.x < 0 && !lookingLeft){
            Flip();
            lookingLeft = true;
        }
    }

    void Flip()
    {
        Vector3 scale = transform.localScale;
		scale.x *= -1;
		transform.localScale = scale;
    }
}
