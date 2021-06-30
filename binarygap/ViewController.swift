//
//  ViewController.swift
//  binarygap
//
//  Created by Prabhdeep Singh on 19/08/16.
//  Copyright © 2016 Prabhdeep Singh. All rights reserved.
//

import UIKit
class binary{
    var number = 8976
    var remainder = 0
    var q = 5
    var arr = [Int]()
    var arr1 = [Int]()
    var counter = 0
    var x=0,y=0
    var mus = 1
    
    
    func calculate(){
        
        while q != 0{
            q = number/2
            remainder = number%2
            arr.append(remainder)
            number = q
            //print(q)
        }
        reverse()
        
    }
    
    
    func reverse(){
       
        var c = arr.count
        while c>0{
            arr1.append(arr[c-1])
            c=c-1
        }
        //print(arr1)
    }
    
    
    func binarygap()->Int{
        let count = arr1.count
        for i in 0...count-1{
            if i+1<count{
                x=arr1[i]
                y=arr1[i+1]
            }
            else{
                x=arr1[i]
                y=arr1[i]
            }
            if x==1 && y==0{
                counter=counter+1
            }
        }
       
        return counter
        
    }
    func emptyArray(){
        arr.removeAll()
        arr1.removeAll()
    }
    
    
}
var p = binary()



class ViewController: UIViewController {
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var BGbutton: UIButton!
   
    @IBOutlet weak var BQ: UITextField!
    @IBOutlet weak var gaps: UITextField!
    @IBOutlet weak var music: UITextField!
    @IBOutlet weak var musicButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gap(sender: AnyObject) {
        let nm:Int? = Int(number.text!)
        p.number=nm!
        p.calculate()
        let result = p.binarygap()
        print(result)
        print(p.arr1)
        gaps.text=String(result)
        BQ.text=String(p.arr1)
       
        
    }
   @IBAction func actionButton(sender: AnyObject) {
    
    //var p : Point
    //p = Point(x:10,y:20)
    //var sum = p.addPoints()
    //music.text = "Sum is: \(sum)"

    
    var m = p.mus
        if m == 1{
            p.mus==0
            music.text="play music"
        }
        else if m == 0{
            p.mus==1
            music.text="stop music"
       }
    }

}

