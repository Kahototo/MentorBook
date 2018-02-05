//
//  ViewController.swift
//  MentorBook
//
//  Created by 小西夏穂 on 2017/09/08.
//  Copyright © 2017年 小西夏穂. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "はしお", imageName: "hashio.JPG", course: "iPhone"))
        mentorArray.append(Mentor(name: "あぐり", imageName: "aguri.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "webS,webD"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func tugi() {
        index = index + 1
    
        print(index)
        if index == 3 {
            index = 0
    
        }
        setUI()
      
//        if index % 3 == 0 {
//            show = 0
//        }else if index % 3 == 1{
//            show = 1
//        }else if index % 3 == 2{
//            show = 2
//        }
    
    }
    
    @IBAction func mae() {
        index = index - 1
    
        print(index)
        if index == -1 {
            index = 2
        }
        setUI()
        
    }


}

