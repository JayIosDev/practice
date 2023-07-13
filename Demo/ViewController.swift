//
//  ViewController.swift
//  Demo
//
//  Created by Rahul Sharma on 13/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        // Longest Substring Without Repeating Characters
        print("Longest Substring Without Repeating Characters \(self.lengthOfLongestSubstring("Hello, playground"))")
    }


    
    
    // MARK: - Longest Substring Without Repeating Characters
    func lengthOfLongestSubstring(_ s: String) -> Int {
           guard !s.isEmpty else { return 0 }
           var len = 0, chars = [Character]()
           for c in s {
               if let idx = chars.firstIndex(of: c) {
                   chars.removeSubrange(0...idx)
               }
               chars.append(c)
               len = max(len, chars.count)
           }
           return len
       }
    
}

