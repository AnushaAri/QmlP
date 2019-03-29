/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.toolsteam.Helloproject;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 *
 * @author anusha
 */
public class HelloTest {
    
    public HelloTest() {
         System.out.println("Java gradle project");
    }
    
    @BeforeClass
    public static void setUpClass() {
        System.out.println("Setup");
    }
    
    @AfterClass
    public static void tearDownClass() {
         System.out.println("Tear down");
    }
    
    @Before
    public void setUp() {
         System.out.println("Setup for testing");
    }
    
    @After
    public void tearDown() {
         System.out.println("Tear down for testing");
    }

    
     @Test
    public void hello() {
         System.out.println("Testing");
    }
}
