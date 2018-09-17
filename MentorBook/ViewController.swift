//
//  ViewController.swift
//  MentorBook
//
//  Created by ryohei suzuki on 2018/09/17.
//  Copyright © 2018年 ryohei suzuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var couseLabel: UILabel!
    
    
    var mentorArray : [Mentor] = []
    
    var index : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))
        
        setUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        couseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        if index > 0 {
            index = mentorArray.count
        }
        setUI()
    }

    @IBAction func tugi(){
        index = index + 1
        if index == mentorArray.count{
            index = 0
        }
        //index = index % mentorArray.count
        setUI()
    }
    
}

