//
//  ViewController.swift
//  demo_dices3
//
//  Created by Hoang Anh on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hinh1: UIImageView!
    @IBOutlet weak var hinh2: UIImageView!
    @IBOutlet weak var hinh3: UIImageView!
    @IBOutlet weak var lbl_sum: UILabel!
    
    var arrDices:[String]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrDices=["1","2","3","4","5","6"]
    }

    @IBAction func newgame(_ sender: Any) {
        
        let diem1=Int.random(in: 0...5)
        let diem2=Int.random(in: 0...5)
        let diem3=Int.random(in: 0...5)
        
        hinh1.image=UIImage(named: arrDices[diem1])
        hinh2.image=UIImage(named: arrDices[diem2])
        hinh3.image=UIImage(named: arrDices[diem3])
        
        let sum = diem1 + diem2 + diem3 + 3
        
        lbl_sum.text=String(sum)
        
        
    }
    
}

