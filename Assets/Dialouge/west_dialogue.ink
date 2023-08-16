INCLUDE globals.ink

-> main

=== main ===

{
    - completed_intro == false:
        -> intro
    - astronomy_score == -1:
        -> questions
    - astronomy_score != -1 && chem_score != -1 && anthro_score != -1:
        -> finale
}

Feel free to go talk to your other professors!
Once you've answered the questions, we can determine if you're still a suspect or not!
Good luck!

->END

=== intro ===
Hello there! #speaker:Prof. West #portrait:west
Thanks for coming in today!
How are you doing?
    * I'm good! #speaker:Jumbo #portrait:jumbo
        Well I'm glad to hear it! #speaker:Prof. West #portrait:west
        I'm sure you'll feel even better after answering some astronomy questions!
    * I'm not good! #speaker:Jumbo #portrait:jumbo
        I'm sorry to hear that. #speaker:Prof. West #portrait:west
        Surely answering some astronomy questions should lighten your mood!
        ... #speaker:Jumbo #portrait:jumbo
- Well anyways, we should probably get on with it! #speaker:Prof. West #portrait:west
Do you know why we called you in here today?
    * Nope! #speaker:Jumbo #portrait:jumbo
        I see. #speaker:Prof. West #portrait:west
        You're probably worried sick, thinking you're in trouble or something!
        Well let me put your mind at ease.
        We called you in today because the school is conducting an investigation!
        Yesterday during class time, a priceless artifact was stolen from the new exhibit in Tisch Library.
        The school is looking at the smartest and most clever students as their primary suspects, as they are the only ones who could pull off a heist like that.
        Naturally, the school suspects that the perpetrator must be in our BBtHK class, as the students who take this class are the brightest Tufts has to offer!
            ** Right! #speaker:Jumbo #portrait:jumbo
            ** Are you sure? #speaker:Jumbo #portrait:jumbo
                Of course! #speaker:Prof. West #portrait:west
        -- So, we are trying to clear the names of all our students, by giving them an alibi. #speaker:Prof. West #portrait:west
        Because the heist took place during our class time yesterday, we will know if a student is innocent if they can prove that they were present during yesterday's lecture.
        The only way we can be certain you were there is if you know the class material!
        So, we are testing students on their BBtHK knowledge to clear their name, so they aren't falsely accused of any crimes.
    * Yep! #speaker:Jumbo #portrait:jumbo
        Great! #speaker:Prof. West #portrait:west
        So you know that we're testing students on their BBtHK knowledge to clear their name from a heist that took place yesterday during class time!
- ~completed_intro = true
-> main

=== questions ===
Are you ready to get started? #speaker:Prof. West #portrait:west
 + Yes! #speaker:Jumbo #portrait:jumbo
    I love your enthusiasm for science! #speaker:Prof. West #portrait:west
    Let's get on with the questions! 
    ~astronomy_score = 0
    -> question1
 + No! #speaker:Jumbo #portrait:jumbo
    I understand... #speaker:Prof. West #portrait:west
    You want to save the best for last!
    Feel free to go and talk with the other two professors.
    Prof. Shepardson-Fungairino will be testing you on your chemistry knowledge, while Prof. Sullivan will ask you questions about anthropology!
    Come back here when you're ready to answer my astronomy questions!
    -> DONE

= question1
For the first question, it seems fitting to start at the very beginning: the Big Bang. #speaker:Prof. West #portrait:west
As we learned in class, all the matter in the Universe used to exist at a single point! 
From there, the Universe expanded, leading to the Universe as we see it today!
We call that initial expansion the Big Bang.
Even now, the Universe is still expanding!
    * Cool! #speaker:Jumbo #portrait:jumbo
        I know right! #speaker:Prof. West #portrait:west
    * Not cool! #speaker:Jumbo #portrait:jumbo
        I think it's pretty cool... #speaker:Prof. West #portrait:west
        Anyways...
- My question to you, is how long ago did the Big Bang take place? Did it take place a) 24.7 Gyr ago; b) 13.8 Gyr ago; c) 9.2 Gyr ago; or d) 4.567 Gyr ago?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * B for sure! #speaker:Jumbo #portrait:jumbo
        That's exactly right! #speaker:Prof. West #portrait:west
        
        ~astronomy_score = astronomy_score + 1
        
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * D for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
- We think the Big Bang took place 13.8 billion years ago!
That was a long time ago!
Let's go on to question 2!
->question2

=question2
One of an astronomer's most important tools is their telescope! #speaker:Prof. West #portrait:west
How can we know anything about the stars if they're too small to see!
However, astronomers can be very tricky when it comes to looking at the light that comes from stars.
Because we know stars emit white light, when we view them through our telescope, we should be able to see all the different wavelengths of light!
However, sometimes certain wavelengths of light are missing!
That means that something absorbed the light on its way to us!
Because certain elements absorb specific wavelengths of light, we can figure out what elements the light passed through by looking at the missing wavelengths!
From that, we can determine the elemental composition of a distant star's atmosphere.
Pretty cool if you ask me!
My question is this:
What is the name of the method that astronomers use to determine the elemental composition of a distant star's atmosphere? Is it a) Galactic Stratigraphy; b) The Radial Velocity Method; or c) Spectroscopy?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * C for sure! #speaker:Jumbo #portrait:jumbo
        That's exactly right! #speaker:Prof. West #portrait:west
    
        ~astronomy_score = astronomy_score + 1
        
- The method is called spectroscopy, because we look at the solar spectrum of a star!
Let's go on to question 3!
-> question3

=question3
There are a lot of different elements in the Universe! #speaker:Prof. West #portrait:west
There are 118 of them on the periodic table!
Some are more common than others.
Hydrogen, for example, is the simplest, while some of the larger elements have only been produced artificially in a lab!
Helium is an element we talked about during class. 
It has an atomic number of 2, and is also a noble gas, meaning it has a full outer orbital of valence electrons!
My question is where did/does most of the Universe's Helium come from? Was it a) the Big Bang; b) the main sequence of stars; or c) the red giant phase of stars?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        That's exactly right! #speaker:Prof. West #portrait:west
        
         ~astronomy_score = astronomy_score + 1
        
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
- The majority of the Universe's helium came from the Big Bang, via a process called Big Bang Nucleosynthesis!
Even though stars like the sun, that are still around today, are constantly burning hydrogen and forming helium, all the stars in the Universe don't even come close to the amount generated by the Big Bang!
Let's go to question 4!
-> question4

=question4
One key topic from this semester was planet formation. 
We saw that depending on a planet's distance from the center of our solar system, their densities change, due to their material composition.
For instance, planets closer to the sun, like Mercury, are made up of mostly rock and iron, while outer planets, like Jupiter and Neptune, are made up of more ice.
The reason for this, we think, is that in the early solar system, liquid water couldn't exist close to the sun.
We said the closest distance that ice could be used in planetary formation was defined by the frost line!
My question: how far away from the center of the solar system was the frost line? Was it at a) 1AU; b) 3AU; c) 6AU; or d) 9AU?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * B for sure! #speaker:Jumbo #portrait:jumbo
         That's exactly right! #speaker:Prof. West #portrait:west
        
         ~astronomy_score = astronomy_score + 1
        
    * C for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * D for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
- We think the frost line was about 3 astronomical units away from the sun.
The reason liquid water exists on Earth now is probably because it was delivered by meteorites from the outer solar system.
Pretty cool!
Let's go on to question 5!
->question5


=question5
One topic we discussed in class was planetary atmospheres!
Atmospheres are a layer of gases that envelope a planet.
On Earth, we have an oxygen-rich atmosphere that is crucial for organisms such as humans who perform cellular respiration!
There are many different ways a planet can lose its atmosphere.
One way a planet can lose its atmosphere is if the gas molecules can somehow escape the gravitational pull of a planet.
In order for that to happen, it needs to be moving at a certain speed.
The strength of a planet's gravity, and its temperature are two factors that influence what types of gases can be found in a planet's atmosphere!
What is the name of the atmosphere that depends on a plant's temperature and mass? Is it a) Solar Wind Stripping; b) Condensation; or c) Thermal Escape?
    * A for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * B for sure! #speaker:Jumbo #portrait:jumbo
        I'm sorry, that's incorrect! #speaker:Prof. West #portrait:west
    * C for sure! #speaker:Jumbo #portrait:jumbo
        That's exactly right! #speaker:Prof. West #portrait:west
        
         ~astronomy_score = astronomy_score + 1
        
- We call it Thermal Escape because it is the thermal energy of the molecules that allows it to escape the atmosphere!
->finaltally

=finaltally

It looks like you've answered all my questions!
Let me tally up your points!
...
...
Your final score is {astronomy_score}!

{astronomy_score:
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

=== finale ===
~final_score = chem_score + astronomy_score + anthro_score
You've answered all our questions! #speaker:Prof. West #portrait:west
All that's left is to tally up your scores and give you your results!
...
...
One moment please!
...
...
Alright!
Your final score is {final_score}!

{final_score >= 9:
    -> goodending
  - else:
    -> badending
}

=== goodending ===
Your score is high enough! 
You are no longer a suspect in the school's investigation!
I'm sorry we had to bring in this afternoon, but I hope you had fun anyways!
Have a good rest of your day!
#loadScene:Main_Menu



->END

=== badending ===
I'm sorry to say, your score is not high enough.
I cannot, in good conscience, give you an alibi. 
But I'm sure you will be proven innocent some other way as the investigation goes on. 
Unless you have something to hide...
#loadScene:Main_Menu

->END


