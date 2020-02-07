//
//  UIView+Ext.swift
//  SwiftUI-CaptureView
//
//  Created by Daisuke TONOSAKI on 2020/02/07.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

extension UIView {
    
    func image() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: self.bounds)
        
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
    
}
