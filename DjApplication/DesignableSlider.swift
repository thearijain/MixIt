//
//  DesignableSlider.swift
//  DjApplication
//
//  Created by Anand Jain on 7/20/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableSlider: UISlider {

    @IBInspectable var thumbImage: UIImage? {
        didSet {
            setThumbImage(thumbImage, for: .normal)
        }
    }

}
