//
//  LabelExtension.swift
//  GOW
//
//  Created by Alejandro on 14/03/25.
//

import UIKit

extension UILabel{
    func setCustomFont(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle){
        guard let customFont = UIFont(name: fontName, size: size) else{
            self.font = UIFont.systemFont(ofSize: size)
            return
        }
        self.font = customFont
        
        let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
        self.font = fontMetrics.scaledFont(for: customFont)
        self.adjustsFontForContentSizeCategory = true
        
        
    }
}

