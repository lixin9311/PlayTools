//
//  PlayViews.swift
//  PlayTools
//

import Foundation
import UIKit

let ui = PlayUI.shared

final class PlayUI {
    
    static let shared = PlayUI()
    
    private init() {}
    
    func showAlert(_ title : String, _ content : String) {
        let ac = UIAlertController(title: title, message: content, preferredStyle: .alert)
        PlayInput.shared.root?.present(ac, animated: true, completion: nil)
    }
    
    func showLauncherWarning() -> Void {
        let ac = UIAlertController(title: "PlayCover Launcher is not found!", message: "Please, install it from playcover.io site to use this app.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default){ _ in
            Dynamic.NSApplication.sharedApplication.terminate(self)
        })
        PlayInput.shared.root?.present(ac, animated: true, completion: nil)
    }
    
}
