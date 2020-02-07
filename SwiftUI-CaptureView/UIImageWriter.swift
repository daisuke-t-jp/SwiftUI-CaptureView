//
//  UIImageWriter.swift
//  SwiftUI-CaptureView
//
//  Created by Daisuke TONOSAKI on 2020/02/07.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

class UIImageWriter: NSObject {
    private var completion: (_ error: Error?) -> Void = { _ in }
    
    func writeToSavedPhotosAlbum(image: UIImage, completion: @escaping (_ error: Error?) -> Void) {
        self.completion = completion
        
        UIImageWriteToSavedPhotosAlbum(image,
                                       self,
                                       #selector(image(_:didFinishSavingWithError:contextInfo:)),
                                       nil)
    }
    
    @objc
    private func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        completion(error)
    }
}
