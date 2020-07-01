PatternSearch tests by £ukasz Lipowicz README file in Q&A form.  

>What is this file?

The following document describes tests implemented for PatternSearch program, which was assigned to me - £ukasz Lipowicz - as a recruitment task for some company I will refuse to name here. The recruitment task description was the following:

>>PatternSearch is an application which takes a pattern string and an input string as command-line arguments. Then it searches for the pattern string in the input string and prints the first occurrence of the pattern string in the input.
>>Use given maven project of PatternSearch app and extend it by adding all possible test cases using Cucumber. All Gherkin scenarios can be grouped within single feature file. You do not have to dig into the existing Java code, instead focus on expected behaviour. If you do not know Cucumber yet, it's a chance to show your ability to learn quickly as well.
>>Please also specify how to run implemented test(s), e.g. by adding README file in the project.

After doing the task I got some feedback from that company, saying that I did it very well, but unfortunately they need to freeze the recruitment process and they will contact me in January 2020. Unfortunately, they never contacted me after that and never answered any of my later mails. 

Because they did not add any copyright or confidential note and acted quite rude by asking me to do something, saying I did it very well and never replying to any of my later mails, I feel that I might put my work to at least some good use by sending it as a code sample to any other company, that might wish to inspect my coding abilities. It is probably perfect for that purpose, as at least one other company was using it to measure it's employee candidates ability to code. 

>How to run the tests?

To run the tests I have implemented, one needs an IDE that supports maven. It could be IntelliJ, Netbeans or possibly Eclipse. I have used Netbeans. To run the tests under Netbeans, simply right click on the project and select "Test" from the context menu. Under different IDEs, it should work in similar way. 

>Which files contain the tests? 

src/test/resources/com/sample/textsearch/PatternTestSearch.feature - The tests description in gherkin.
src/test/java/com/sample/textsearch/PatternSearchTest.java - The translation of gherkin steps to java language
src/test/java/com/sample/textsearch/TestRunner.java - A class that allows to run the tests

>Tell me something about design choices you have made.

Majority of the test cases use Scenario Outline to describe what is going on in them. It can be seen as controversial, because opinions on the issue are apparently very different: https://stackoverflow.com/questions/44619535/what-is-the-benefit-of-scenario-over-scenario-outline-in-cucumber - the highest rated answer here says this is a bad thing, while this highly rated video says it is a good idea: https://youtu.be/nrggIRWK6qo?t=1047. I decided to follow the advice of a man from youtube video. I have made this decision, because the test cases here are very simple and repetitive, so there is no way a reader could get lost while fitting the parameters into the sentences, even if he is not a programmer.

The only test case that is not using Scenario Outline is the one, that checks if program works correctly with fake new line sign. I could not make it work with example table and solutions I have found in the internet were not working (https://stackoverflow.com/questions/54655230/newline-character-in-cucumber-scenario-outline-causing-error), so I decided to move it to separate test case instead. 
