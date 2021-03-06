//
//  ACwithImage.swift
//  AlertWithImage
//
//  Created by Joseph Ward on 16/08/18.
//  Copyright © 2018 Joethermal. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    func addImage(image: UIImage) {
        
        let maxSize = CGSize(width: 280, height: 300)
        let imgSize = image.size
        
        var ratio: CGFloat!
        if(imgSize.width > imgSize.height) {
            ratio = maxSize.width / imgSize.width
        } else {
            ratio = maxSize.height / imgSize.height
        }
        
        let scaledSize = CGSize(width: imgSize.width * ratio, height: imgSize.height * ratio)
        
        var resizedImage = image.imageWithSize(scaledSize)
        
        if (imgSize.height > imgSize.width) {
            let left = (maxSize.width - resizedImage.size.width) / 2
            resizedImage = resizedImage.withAlignmentRectInsets(UIEdgeInsetsMake(0, -left, 0, 0))
        }
        
        let imgAction = UIAlertAction(title: "", style: .default, handler: nil)
        imgAction.isEnabled = false
        imgAction.setValue(resizedImage.withRenderingMode(.alwaysOriginal), forKey: "image")
        self.addAction(imgAction)
        
        }
    
}
