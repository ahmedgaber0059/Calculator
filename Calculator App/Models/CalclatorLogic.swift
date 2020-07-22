//
//  File.swift
//  test
//
//  Created by Ahmed Gaber on 7/21/20.
//  Copyright © 2020 com.ahmedgaber. All rights reserved.
//

import Foundation

struct CalclatorLogic {
    
     private var number: Double?
    
     private var tuplesCalcualtion: (n1: Double, calcOperator: String)?

    
    
    mutating func setNumber (_ number: Double){
        self.number = number
    }

     mutating func calc (calcValue: String) -> Double? {
       
        if let n = number {
            if calcValue == "+/-"{
                return n * -1
            }
            else if calcValue == "AC"{
                return 0
                
            }
            else if calcValue == "%"{
                return n * 0.01
            }
            else if calcValue == "="{
                return performTwoNumbercCalc(n2: n)
            }
            else{
                 tuplesCalcualtion =  (n1: n, calcOperator: calcValue)

            }

            
        }
         return nil
    }
    
    private func performTwoNumbercCalc (n2: Double) ->Double? {
        
        if let n1 = tuplesCalcualtion?.n1 , let operation = tuplesCalcualtion?.calcOperator {
            
            if operation == "+" {
                return n1 + n2
            }
            else if operation == "-"{
                return n1 - n2
            }
            else if operation == "×"{
                return n1 * n2
            }
            else if operation == "%"{
                return n1 / n2
            }
          
        }
        return nil
    }
    
}

