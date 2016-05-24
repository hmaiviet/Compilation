//
//  View2.swift
//  Compilation
//
//  Created by VietHung on 5/24/16.
//  Copyright © 2016 VietHung. All rights reserved.
//

import UIKit

class View2: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(3, animations: {
        self.logo!.alpha = 1
        }) {(finished) in
            let V1 = self.storyboard?.instantiateViewControllerWithIdentifier("v1") as? ViewController
            self.navigationController?.pushViewController(V1!, animated: true)
        }
    
    }
}
