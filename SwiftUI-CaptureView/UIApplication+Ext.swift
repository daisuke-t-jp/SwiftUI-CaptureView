//
//  UIApplication+Ext.swift
//  SwiftUI-CaptureView
//
//  Created by Daisuke TONOSAKI on 2020/02/07.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

extension UIApplication {
    
    static func image() -> UIImage? {
        guard let rootViewController = UIApplication.shared.windows[0].rootViewController else {
            return nil
        }
        
        guard let view = rootViewController.view else {
            return nil
        }
        
        return view.image()
    }
    
}
