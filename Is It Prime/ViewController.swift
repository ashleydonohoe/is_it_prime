//
//  ViewController.swift
//  Is It Prime
//
//  Created by Gabriele on 8/5/15.
//  Copyright © 2015 Ashley D Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myNumber: UITextField!
    
    @IBOutlet var primeResult: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(myNumber.text!) {
        
            var isPrime = true
            
            if number == 1 {
                isPrime = true
            }
            
            if number != 2 && number != 1 {
                for var n = 2; n < number; n++ {
                    if number % n == 0 {
                        isPrime = false
                        break
                    }
                }
            }
            
            if isPrime {
                primeResult.text = "\(number) is a prime number!"
            } else {
                primeResult.text = "\(number) is not a prime number"
            }
            
        } else {
            primeResult.text = "Please enter a number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

