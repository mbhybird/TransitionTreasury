//
//  TRViewControllerAnimatedTransitioning.swift
//  TransitionTreasury
//
//  Created by 宋宋 on 12/20/15.
//  Copyright © 2015 TransitionTreasury. All rights reserved.
//

import UIKit
/**
 *  TransitionTreasury's transition protocol. All transition animation must conform this protocol.
 */
public protocol TRViewControllerAnimatedTransitioning: UIViewControllerAnimatedTransitioning {
    /// Required implement.
    var transitionStatus: TransitionStatus?{get set}
    /// Required implement.
    var interacting: Bool{get set}
    /// Rquired implement.
    var transitionContext: UIViewControllerContextTransitioning?{get set}
    
    var cancelPop: Bool{get set}
    /// Option
    var completion: (() -> Void)?{get set}
    /// Option
    var interactivePrecent: CGFloat{get}
    /**
     Option
     
     - parameter index: index of navgationViewController.viewcontrollers
     */
    func popToVCIndex(index: Int)
}

public extension TRViewControllerAnimatedTransitioning {
    public var interacting: Bool {
        get {
            return false
        }
        set {
            
        }
    }
    
    public var keyView: UIView? {
        get {
            return nil
        }
        set {
            
        }
    }
    
    public var completion: (() -> Void)? {
        get {
            return nil
        }
        set {
            
        }
    }
    
    var interactivePrecent: CGFloat {
        get {
            return 0.3
        }
    }
    
    func popToVCIndex(index: Int) {
        
    }
    
}
