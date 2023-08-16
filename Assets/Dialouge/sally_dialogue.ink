INCLUDE globals.ink

-> main
=== main ===


{
    - completed_intro == false:
        -> deflect
        
    - chem_score == -1:
        -> questions
     
}

Sadly, I don't have any other chemistry questions for you right now.
Once you're done answering all the professors' questions, go back to Professor West to get your final results!

->END

=== deflect ===
Hey there! #speaker:Prof. Shepardson-Fungairino #portrait:sally
You need to talk to Professor West before you can answer my questions.
He will explain what's going on if you're confused at all.
-> DONE

=== questions ===
Hello there!  #speaker:Prof. Shepardson-Fungairino #portrait:sally
I trust Professor West filled you in with all the details!
Don't be worried or anything.
All you can do is try your best!
Are you ready to get started? #speaker:Prof. Shepardson-Fungairino #portrait:sally
 + Yes! #speaker:Jumbo #portrait:jumbo
    I love your can-do attitude! #speaker:Prof. Shepardson-Fungairino #portrait:sally
    Let's get on with the questions!
    ~ chem_score = 0
    -> question1
 + No! #speaker:Jumbo #portrait:jumbo
    That's fine. #speaker:Prof. Shepardson-Fungairino #portrait:sally
    Come back when you think you're ready!
    -> DONE



=question1
Let's get right to it!
What element is the most important for organic molecules? #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * Carbon! #speaker:Jumbo #portrait:jumbo
        Correct! #speaker:Prof. Shepardson-Fungairino #portrait:sally
        
        ~ chem_score = chem_score + 1
        
    * Oxygen! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * Nitrogen! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * Helium! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
- Due to its four valence electrons, carbon can form up to four different covalent bonds!
That makes it a versatile backbone for pretty much all of the key organic molecules that are crucial for life on Earth, especially lipids and carbohydrates!
Pretty cool!
On to the next question!
-> question2

=question2

There are three different origin of life hypotheses we presented in class.
There is the Abiotic Chemistry Hypothesis, that states that life could've spontaneously arose on Earth, given the correct conditions!
There is the Meteorite Hypothesis, that states that the ingredients of life could've been delivered to Earth from outer space!
And there is the Combination Hypothesis, that combines the key elements of the two.
We also discussed the Miller-Urey experiment, which is often taught in schools, but is riddled with design and experimental flaws.
My question: what origin of life hypothesis did the Miller-Urey experiment support, before its validity was brought into question? Was it a) The Abiotic Chemistry  Hypothesis; b) The Meteorite Hypothesis; or c) The Combination Hypothesis?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Correct! #speaker:Prof. Shepardson-Fungairino #portrait:sally
            
        ~ chem_score = chem_score + 1
            
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
- The Miller-Urey experiment tried to provide evidence for the Abiotic Chemistry Hypothesis, but it made a couple of assumptions about the conditions of the early Earth that might not have been true!
Also, plenty of scientists have struggled to replicate it.
Pretty interesting.
Anyways, let's go on to question 3!
-> question3

=question3
We learned about the Central Dogma of Biology this semester. 
Sounds pretty important, huh.
Central Dogma...
Anyways, it describes the process by which the genetic information, stored in DNA, becomes proteins.
It uses RNA as a messenger, to help bring the genetic information from the DNA in the nucleus of a cell to the ribosomes in the cytoplasm.
My question for you: what is the process by which the DNA is read, and an opposite mRNA copy is generated? Is it a) transformation; b) translation; or c) transcription?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Correct! #speaker:Prof. Shepardson-Fungairino #portrait:sally
            
        ~ chem_score = chem_score + 1
            
- Transcription is the process of going from DNA to mRNA, and translation is the process of going from mRNA to proteins!
Let's go on to question 4!
->question4

=question4
In this class, we talked about some of the key molecules that are used by all lifeforms on Earth! 
There are proteins, carbohydrates, lipids, and nucleic acids!
All play a super important role!
Some of these molecules are pretty large and complex!
If you were to unravel all the DNA in one of your cells, it would be around 2 meters long!
These complex molecules are made up of smaller components that when joined together, create a larger molecule.
My question: what are proteins made out of? Is it a) Nucleotide Bases; b) Amino Acids; or c) Hydrocarbon chains?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Correct! #speaker:Prof. Shepardson-Fungairino #portrait:sally
            
        ~ chem_score = chem_score + 1
            
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
- Proteins are made out of amino acids, which are joined together by peptide bonds!
The amino acid sequence of a protein makes up its primary structure.
Anyways, let's go on to the 5th and final question!
-> question5

=question5
One of the last topics we covered in my section of the class was the key metabolic pathways!
Using complex biological processes, plants and other organisms on our planet can convert light energy to glucose, and certain organisms like humans can convert that glucose into ATP, a form of energy used by our cells!
My question is this: what is the name of the metabolic pathway that converts glucose into ATP? Is it a) Cellular Respiration; b) Photosynthesis; or c) Mitosis?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Correct! #speaker:Prof. Shepardson-Fungairino #portrait:sally
            
        ~ chem_score = chem_score + 1
        
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that is not the right answer... #speaker:Prof. Shepardson-Fungairino #portrait:sally
- Cellular respiration is one of the most important biological processes in all of life!
-> finaltally

=finaltally

It looks like you've answered all my questions!
Let me tally up your points!
...
...
Your final score is {chem_score}!

{chem_score:
-0: You win some, you lose some!
-1: It can always be worse!
-2: Almost half!
-3: That's a respectable score!
-4: That's a great score!
-5: Perfect score!
    I'm super impressed!
-else: That's pretty good!
}

-> main


