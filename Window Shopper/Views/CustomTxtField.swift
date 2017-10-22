//
//  CustomTxtField.swift
//  Window Shopper
//
//  Created by Loyd Vallot on 10/21/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currenctLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height)/2 - size / 2, width: size, height: size))
        currenctLbl.backgroundColor = #colorLiteral(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.8)
        currenctLbl.textAlignment = .center
        currenctLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currenctLbl.layer.cornerRadius = 5.0
        currenctLbl.clipsToBounds = true //must do this in order for corner radius to be active
        let formatter = NumberFormatter() //initailizing formatter
        formatter.numberStyle = .currency //setting numberstyle to currency
        formatter.locale = .current //Money sign will be in current currency by location(Country)
        currenctLbl.text = formatter.currencySymbol
        addSubview(currenctLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
        
        }
        
        func customView(){
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            clipsToBounds = true
            
            
            if let p = placeholder {
                
                let place = NSAttributedString(string: p, attributes: [.foregroundColor:  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)] )
                attributedPlaceholder = place
                textColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
}
