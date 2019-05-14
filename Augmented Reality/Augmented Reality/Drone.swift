//
//  Drone.swift
//  Augmented Reality
//
//  Created by Kevin Ren on 5/13/19.
//  Copyright © 2019 Binghamton University. All rights reserved.
//

import Foundation
class Drone: SCNNode {
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "Drone.scn") else { return }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }
}
