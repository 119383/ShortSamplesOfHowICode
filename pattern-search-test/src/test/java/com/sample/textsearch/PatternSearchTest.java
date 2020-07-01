/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.textsearch;

import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import junit.framework.Assert;
/**
 *
 * @author Schleppel
 */
public class PatternSearchTest {
    
    int realResult;
    
    @Given("^I input '(.*?)' as the text and '(.*?)' as pattern$")
    public void setInputParameters(String text, String pattern){
        PatternSearch ps = new PatternSearch(pattern);
        realResult = ps.search(text);
    }
    
    @Then("^I get the offset of '(\\d+)' as the result$")
    public void checkIfCorrectResult(String result){
        int expectedResult = Integer.parseInt(result);
        Assert.assertEquals("Result offset different from expected", expectedResult, realResult);
    }
    
    @Given("^I input a text that could be parsed as containing a new line char$")   
    public void setInputWithNewline(){
        setInputParameters("The\\nPainting\\nofmy\\nbrother", "brother");
    }
    
    @Then("^the program will still parse it as backslash and n and return valid offset$")
    public void checkIfCorrectResultForTheNewLineScenario(){
        checkIfCorrectResult("21");
    }
    
}
