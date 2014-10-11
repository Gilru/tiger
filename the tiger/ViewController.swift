//
//  ViewController.swift
//  the tiger
//
//  Created by GILBERT  on 2014-10-02.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myTigerName: UILabel!
    @IBOutlet weak var myTigerAge: UILabel!
    @IBOutlet weak var myTigerBreed: UILabel!
    
    var myTigers:[Tiger] = []
    var currentIndex = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Doggy"
        myTiger.age = 33
        myTiger.breed = "doggy from france"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        myTiger.chuffNumberOfTime(8)
        
        println("my tiger name is : \(myTiger.name) and is age is \(myTiger.age) and it's breed is    \(myTiger.breed) and the image \(myTiger.image)")
        
        myTigerName.text = myTiger.name
        myTigerAge.text = "\(myTiger.age)"
        myTigerBreed.text = myTiger.breed
        myImageView.image = myTiger.image
        
        
        
        
        var myTiger2 = Tiger()
        
        myTiger2.name = "Doggy"
        myTiger2.age = 23
        myTiger2.breed = "doggy from loomba"
        myTiger2.image = UIImage(named: "IndochineseTiger.jpg")
        
        myTiger2.chuff()
        
        myTigerName.text = myTiger2.name
        myTigerAge.text = "\(myTiger2.age)"
        myTigerBreed.text = myTiger2.breed
        myImageView.image = myTiger2.image
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Third Tigger"
        thirdTiger.age = 34
        thirdTiger.breed = "don't really know"
        thirdTiger.image = UIImage(named: "Lioness.jpeg")
        
        myTigerName.text = thirdTiger.name
        myTigerAge.text = "\(thirdTiger.age)"
        myTigerBreed.text = thirdTiger.breed
        myImageView.image = thirdTiger.image
        
        var myFourthTiger = Tiger()
        myFourthTiger.name = "foutty tog"
        myFourthTiger.age = 10
        myFourthTiger.breed = "some other breed"
        myFourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myTigerName.text = myFourthTiger.name
        myTigerAge.text = "\(myFourthTiger.age)"
        myTigerBreed.text = myFourthTiger.breed
        myImageView.image = myFourthTiger.image
        
        
        myTigers += [myTiger,myTiger2,thirdTiger,myFourthTiger]
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @IBAction func showAnother(sender: UIBarButtonItem) {
        
        var generator:Int
        
        do{
           generator = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while generator == currentIndex
        
        currentIndex = generator
        
        let tiger = myTigers[generator]
        
        
//        myImageView.image = tiger.image
//        myTigerName.text = tiger.name
//        myTigerAge.text = "\(tiger.age)"
//        myTigerBreed.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 0, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myImageView.image = tiger.image
            self.myTigerName.text = tiger.name
            self.myTigerBreed.text = tiger.breed
            self.myTigerAge.text = "\(tiger.age)"
          
            
            
            }, completion: {
                (finished: Bool) -> () in
        })
        
        
    }

}

