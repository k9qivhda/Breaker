//
//  GameViewController.swift
//  Breaker
//
//  Created by victor on 2017. 11. 2..
//  Copyright © 2017년 victor. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    var scnView:SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
    }
    
    func setupScene() {
        scnView = self.view as! SCNView
        scnView.delegate = self
    }
    
    func setupSounds() {
        
    }
    
//    @objc
//    func handleTap(_ gestureRecognize: UIGestureRecognizer) {
//        // retrieve the SCNView
//        let scnView = self.view as! SCNView
//
//        // check what nodes are tapped
//        let p = gestureRecognize.location(in: scnView)
//        let hitResults = scnView.hitTest(p, options: [:])
//        // check that we clicked on at least one object
//        if hitResults.count > 0 {
//            // retrieved the first clicked object
//            let result = hitResults[0]
//
//            // get its material
//            let material = result.node.geometry!.firstMaterial!
//
//            // highlight it
//            SCNTransaction.begin()
//            SCNTransaction.animationDuration = 0.5
//
//            // on completion - unhighlight
//            SCNTransaction.completionBlock = {
//                SCNTransaction.begin()
//                SCNTransaction.animationDuration = 0.5
//
//                material.emission.contents = UIColor.black
//
//                SCNTransaction.commit()
//            }
//
//            material.emission.contents = UIColor.red
//
//            SCNTransaction.commit()
//        }
//    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            return .allButUpsideDown
//        } else {
//            return .all
//        }
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Release any cached data, images, etc that aren't in use.
//    }

}

extension GameViewController: SCNSceneRendererDelegate {
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    }
}
