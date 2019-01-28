//
//  ViewController.swift
//  DuckAssignment
//
//  Created by Ian Bailey on 1/28/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var duck: UIImageView!
    
    @IBOutlet weak var cat: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    
    
    
    private var embiggen: UIViewPropertyAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embiggen = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        })
        
        
    }
    @IBAction func Slider(_ sender: UISlider) {
        embiggen.fractionComplete = CGFloat(sender.value)
    }
    
    
    @IBAction func CatChange(_ sender: UIButton) {
        if cat.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromLeft]
                , animations: {
                    self.cat.setImage(UIImage(named: "dog"), for: .normal)
                    self.label.text = "Dog"
                    
            })
        } else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cat.setImage(UIImage(named: "cat"), for: .normal)
                self.label.text = "Cat"
            })
            }
        }
    }
    
    
    
    
    
    
    
    

    
    
    
    
    
    


