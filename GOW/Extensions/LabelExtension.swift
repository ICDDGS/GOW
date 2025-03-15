//
//  LabelExtension.swift
//  GOW
//
//  Created by Alejandro on 14/03/25.
//

import UIKit

extension UILabel{
    func setCustomFont(fontName: String, size: CGFloat){
        guard let customFont = UIFont(name: fontName, size: size) else{
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        self.font = customFont
    }
}

