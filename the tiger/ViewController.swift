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
    @IBOutlet weak var myTigerFact: UILabel!
    
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
       
      myTiger.age = myTiger.ageInTigersYearsFromAge(myTiger.age)
        
        println("my tiger name is : \(myTiger.name) and is age is \(myTiger.age) and it's breed is    \(myTiger.breed) and the image \(myTiger.image)")
        
        self.myTigerName.text = myTiger.name
        self.myTigerAge.text = "\(myTiger.age)"
        self.myTigerBreed.text = myTiger.breed
        self.myImageView.image = myTiger.image
        self.myTigerFact.text = myTiger.random()
        
        
        
        
        var myTiger2 = Tiger()
        
        myTiger2.name = "Doggy"
        myTiger2.age = 23
        myTiger2.breed = "doggy from loomba"
        myTiger2.image = UIImage(named: "IndochineseTiger.jpg")
        
        myTiger2.age = myTiger2.ageInTigersYearsFromAge(myTiger2.age)
        
       
        
        
        
        self.myTigerName.text = myTiger2.name
        self.myTigerAge.text = "\(myTiger2.age)"
        self.myTigerBreed.text = myTiger2.breed
        self.myImageView.image = myTiger2.image
        
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Third Tigger"
        thirdTiger.age = 34
        thirdTiger.breed = "don't really know"
        thirdTiger.image = UIImage(named: "Lioness.jpeg")
        thirdTiger.age = thirdTiger.ageInTigersYearsFromAge(thirdTiger.age)
        
        
        
        self.myTigerName.text = thirdTiger.name
        self.myTigerAge.text = "\(thirdTiger.age)"
        self.myTigerBreed.text = thirdTiger.breed
        self.myImageView.image = thirdTiger.image
        
        
        var myFourthTiger = Tiger()
        myFourthTiger.name = "foutty tog"
        myFourthTiger.age = 10
        myFourthTiger.breed = "some other breed"
        myFourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myFourthTiger.age = myFourthTiger.ageInTigersYearsFromAge(myFourthTiger.age)
        
        self.myTigerName.text = myFourthTiger.name
        self.myTigerAge.text = "\(myFourthTiger.age)"
        self.myTigerBreed.text = myFourthTiger.breed
        self.myImageView.image = myFourthTiger.image
        
        
        
        self.myTigers += [myTiger,myTiger2,thirdTiger,myFourthTiger]
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @IBAction func showAnother(sender: UIBarButtonItem) {
        
        var generator:Int
        
        do{
           generator = Int(arc4random_uniform(UInt32(myTigers.count)))
        } while generator == self.currentIndex
        
        self.currentIndex = generator
        
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
            self.myTigerFact.text = tiger.random()
          
            
            
            }, completion: {
                (finished: Bool) -> () in
        })
        
        
    }
   
}

