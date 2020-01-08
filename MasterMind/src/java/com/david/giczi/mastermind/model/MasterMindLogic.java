/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.david.giczi.mastermind.model;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Judut
 */

@Local
public interface MasterMindLogic {
    
    
    List<Integer> randDifferentColors(int numberOfColors);
    List<Integer> randNonDifferentColors(int numberOfColors);
    List<Integer> evalutate(List<Integer> task, List<Integer> tipp);
    Boolean isEndOfTheGame(List<Boolean> resultStore);
}
