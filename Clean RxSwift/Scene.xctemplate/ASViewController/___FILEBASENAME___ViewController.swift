//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit
import RxSwift

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerInput
{
    var forwardStream:Observable<___FILEBASENAMEASIDENTIFIER___.ViewModel>! { get }
}

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput
{
    var forwardStream: Observable<___FILEBASENAMEASIDENTIFIER___.Request>! { get }
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: ASViewController<<#NodeType#>, ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput
{
    var forwardStream:Observable<___FILEBASENAMEASIDENTIFIER___.Request>!
    var input:___FILEBASENAMEASIDENTIFIER___ViewControllerInput!
    
    // MARK: - Object lifecycle
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        configureForwardStream()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
        configureInputStream()
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //MARK: - Stream Configuration
    
    func configureForwardStream() {
        //TODO: Configure the ViewController's forwardStream here
    }
    
    func configureInputStream() {
        //TODO: Subscribe to the input's forwardStream from here
    }
}
