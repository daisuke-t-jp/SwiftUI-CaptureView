//
//  ContentView.swift
//  SwiftUI-CaptureView
//
//  Created by Daisuke TONOSAKI on 2020/02/07.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            Spacer().frame(height: 10)
            
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Capture")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text(""),
                      message: Text("Do you save the screen?"),
                      primaryButton: .default(Text("OK")) {
                        guard let image = UIApplication.image() else {
                            print("error")
                            return
                        }
                        let imageWriter = UIImageWriter()
                        imageWriter.writeToSavedPhotosAlbum(image: image, completion: {error in
                            if error != nil {
                                print("error[\(error!)]")
                            }
                        })
                        
                    }, secondaryButton: .cancel(Text("Cancel")) {
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
