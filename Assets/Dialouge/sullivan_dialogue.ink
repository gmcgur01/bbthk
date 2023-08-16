INCLUDE globals.ink

-> main

=== main ===

{
    - completed_intro == false:
        -> deflect
        
    - anthro_score == -1:
        -> questions
     
}

Looks like I'm all out of questions! #speaker:Prof. Sullivan #portrait:sullivan
Once you've answered the rest of them from the other professors, head back to Professor West to get your final results.

-> END

=== deflect ===
Hello! #speaker:Prof. Sullivan #portrait:sullivan
You oughta talk to Professor West.
He'll fill you in on the details if you are confused at all.
Come back afterwards and I'll have plenty of anthropology questions to ask you!
-> DONE

=== questions ===

Howdy there! #speaker:Prof. Sullivan #portrait:sullivan
I'm guessing Professor West filled you in with all the details.
I don't think any of y'all are responsible this, but we gotta make sure!
Hopefully you remember a thing or two from class yesterday!
Are you ready to get started? #speaker:Prof. Sullivan #portrait:sullivan
 + Yes! #speaker:Jumbo #portrait:jumbo
    That's the spirit! #speaker:Prof. Sullivan #portrait:sullivan
    Let's get on with the questions!
    ~ anthro_score = 0
    -> question1
 + No! #speaker:Jumbo #portrait:jumbo
    Alrighty then. #speaker:Prof. Sullivan #portrait:sullivan
    Come back when you're ready!
    -> DONE

=question1

We started my section of the semester by talking about archaeology.
When you hear archaeology you probably think of Indiana Jones, or The Mummy; some sort of action-packed adventure exploring hidden temples, and uncovering priceless artifacts.
When I think about archaeology, I think of dirt!
There's a lot less action that goes into archaeology than you might think, but that doesn't mean it's boring!
A lot of planning goes into archaeology, even before we can begin excavating a site, and uncovering the secrets that might be hidden underneath the surface.
Here's a question for ya: what step/steps do we have to take, even before our shovels hit the dirt? Is it a) Background Research; b) Remote Sensing; c) Ground Reconnaissance; or d) all of the above?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * D for sure! #speaker:Jumbo #portrait:jumbo
        Exactly! #speaker:Prof. Sullivan #portrait:sullivan
        
        ~anthro_score = anthro_score + 1
- All of those processes are super important, and any archaeologist worth their salt will do all three before they begin their excavations!
On to the next question!
-> question2

=question2
Once we've begun our excavation, and our hands are all dirty, hopefully we find something, right?
There's plenty of things to find underground, if you know what you're looking for!
Some of the most important pieces of archaeological data that we can uncover are artifacts!
Here's a question: what exactly makes an artifact an artifact? Is it a) That it's old; b) That it's portable; or c) That it's expensive?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Exactly! #speaker:Prof. Sullivan #portrait:sullivan
        
        ~anthro_score = anthro_score + 1
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
- Artifacts are objects you find that are portable, while features are non-portable.
In addition to those two, we also look for ecofacts, which are natural things, like pollen and shells, that can be found underground, and context, which is the type of soil/sand that a piece of archaeological data was found within.
By looking at all four of those things, we can uncover the secrets of the past!
Let's go on to the next question!
->question3

=question3
Once we start uncovering artifacts, we probably would like to know how old they are, right?
Lucky for us, we have plenty of techniques at our disposal!
There are ways to use the clues we find underground to help us date artifacts, relative to others around them.
Other times we can use methods that aim to find an object's exact age!
Here's my question for you: what is the name of the dating technique that uses geological events to help determine an artifact's age? Is it: a) Geochronology; b) Serialization; or c) Radiometric Dating?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Exactly! #speaker:Prof. Sullivan #portrait:sullivan
        
        ~anthro_score = anthro_score + 1
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
- Geochronology is the process of comparing the date of a geological event to an artifact, or another piece of archaeological data.
Pretty tricky, right?
On to the next question!
->question4

=question4
We didn't only talk about archaeology this semester!
We also discussed the evidence we've found for human evolution!
Over the years, we've found plenty of skeletons around the world, telling a story about the early bipeds, and the gradual process of evolution. 
We talked about one skeleton in particular!
I'm sure you remember, anthropologists were able to recover 40 percent of a 3.2 million year old skeleton, belonging to a hominin species called A. afarensis!
What a crazy find!
My question for you is this: what was the name of that famous A. afarensis skeleton? Is it a) Lacy; b) Lucy; c) Laura; or d) Lisa?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Exactly! #speaker:Prof. Sullivan #portrait:sullivan
        
        ~anthro_score = anthro_score + 1
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * D for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
- The skeleton was named Lucy, after the Beatles' song "Lucy in the Sky with Diamonds."
Incidentally, we think Lucy died by falling out of a tree...
Anyways, let's go on to the next question.
-> question5

=question5
One of the last things we talked about this semester was the arrival of Homo sapiens in the Americas.
While we don't know exactly when they arrived, there are plenty of clues littered around the two continents that give us some hints. 
One of the common hints we know about is a certain type of projectile point that is found all over the continent!
They are dated to be about 11,000 years old, meaning Homo sapiens must've been around earlier than that point.
What was the name of that specific type of projectile point? Is it a) a Clovis point; b) a Meadowcroft point; or c) a Kennewick point?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        Exactly! #speaker:Prof. Sullivan #portrait:sullivan
        
        ~anthro_score = anthro_score + 1
    * B for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
    * C for sure! #speaker:Jumbo #portrait:jumbo
        Nope! #speaker:Prof. Sullivan #portrait:sullivan
- They are called Clovis points, and they are pretty cool!
Although they aren't the oldest artifacts we've discovered, they are super important when telling the story of Homo sapiens in America!
-> finaltally


=finaltally

It looks like you've answered all my questions!
Let me tally up your points!
...
...
Your final score is {anthro_score}!

{anthro_score:
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


