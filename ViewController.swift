//
//  ViewController.swift
//  ACSearchAPIs
//
//  Created by Adriana Carelli on 03/03/16.
//  Copyright © 2016 adrianacarelli. All rights reserved.
//

import UIKit
import CoreSpotlight

class ViewController: UIViewController {
    
    let people = ["William", "Diana", "Kevin", "Steve"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        indexPeople()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func indexPeople(){
        for people in self.people{
            let attributeSet = CSSearchableItemAttributeSet(itemContentType: "kUTTypeItem")
            attributeSet.title = people
            attributeSet.contentDescription = "Learn more about \(people)"
            let item = CSSearchableItem(uniqueIdentifier: people, domainIdentifier: "it.adrianacarelli.ACSearchAPIs", attributeSet: attributeSet)
            attributeSet.thumbnailData = UIImageJPEGRepresentation(UIImage(named:"image1.png")!, 1)
            attributeSet.keywords = []
            CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item], completionHandler: nil)
            
        }
    }

}

