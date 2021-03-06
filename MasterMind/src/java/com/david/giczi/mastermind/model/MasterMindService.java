/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.david.giczi.mastermind.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.ejb.Stateless;

/**
 *
 * @author GicziD
 */
@Stateless
public class MasterMindService implements MasterMindLogic{

    @Override
    public List<Integer> randDifferentColors(int numberOfColors) {
        
       Set<Integer> store = new HashSet<>();
       
       while( store.size() < 4 ) {
           
           store.add((int)(Math.random()*numberOfColors));
           
       }
       
       List<Integer> result = new ArrayList<>(store);
       
       Collections.shuffle(result);
       
        return  result;
    }

    @Override
    public List<Integer> randNonDifferentColors(int numberOfColors) {
        
        List<Integer> store = new ArrayList<>();
        
        while ( store.size() < 4 ) {
            
             store.add((int)(Math.random()*numberOfColors));
        }
        
        return store;
    }

    @Override
    public List<Integer> evaluate(List<Integer> task, List<Integer> tipp) {
        
        List<Integer> result = new ArrayList<>();
        List<Integer> inputTaskStore = new ArrayList<>(task);
        List<Integer> inputTippStore = new ArrayList<>(tipp);
        
        for (int i = 0; i < task.size(); i++) {
            
            result.add(-1);
        }
          
        for (int i = 0; i < inputTaskStore.size(); i++) {
            
            if( inputTaskStore.get(i) == inputTippStore.get(i) ) {
                
                result.set(i, 1);
                inputTaskStore.set(i, -1);
                inputTippStore.set(i, -1);
            }        
        }
        
        
        for (int i = 0; i < inputTippStore.size(); i++) {
            
            for (int j = 0; j < inputTaskStore.size(); j++) {
                
                if( inputTippStore.get(i) != -1 && inputTaskStore.get(j) != -1 && inputTippStore.get(i) == inputTaskStore.get(j) ) {
                    
                    result.set(j, 0);
                    inputTaskStore.set(j, -1);
                    break;
                }
                
            }
            
        }
        
        
        return orderResult(result);
    }

    
    
    
    private List<Integer> orderResult(List<Integer> resultStore) {
        
        for (int i = 0; i < resultStore.size()-1 ; i++) {
            
             for (int j = i+1; j < resultStore.size() ; j++) {
            
            if( resultStore.get(i) < resultStore.get(j) ) {
                
               Integer temp = resultStore.get(i);
               resultStore.set(i, resultStore.get(j));  
               resultStore.set(j, temp);
            }
            
        }
        
     }
        
        return resultStore;
    }

    @Override
    public Boolean isEndOfTheGame(List<Integer> resultStore) {
        
        for (Integer result : resultStore) {
            
            if( result == -1 || result == 0 ) {
                
                return false;
            }
            
        }
        
        return true;
    }

   
    
}
