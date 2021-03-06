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

protocol ___FILEBASENAMEASIDENTIFIER___InteractorInput : class
{
    var <#UseCase1#>Subject:PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase1#>.Request> { get }
    var <#UseCase2#>Subject:PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase2#>.Request> { get }
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutput
{
    var <#UseCase1#>Subject:PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase1#>.Response> { get }
    var <#UseCase2#>Subject:PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase2#>.Response> { get }
}

class ___FILEBASENAMEASIDENTIFIER___Interactor: ___FILEBASENAMEASIDENTIFIER___InteractorOutput
{
    weak var input:  ___FILEBASENAMEASIDENTIFIER___InteractorInput! {
        didSet {
            input.<#UseCase1#>Subject.map(handle).bindTo(<#UseCase1#>Subject).addDisposableTo(bag)
            input.<#UseCase2#>Subject.map(handle).bindTo(<#UseCase2#>Subject).addDisposableTo(bag)
        }
    }
    
    var <#UseCase1#>Subject = PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase1#>.Response>()
    var <#UseCase2#>Subject = PublishSubject<___FILEBASENAMEASIDENTIFIER___.<#UseCase2#>.Response>()
    
    var worker: ___FILEBASENAMEASIDENTIFIER___Worker = ___FILEBASENAMEASIDENTIFIER___Worker()
    
    let bag = DisposeBag()
    
    // MARK: - Business logic
    
    func handle(_ request: ___FILEBASENAMEASIDENTIFIER___.<#UseCase1#>.Request) -> ___FILEBASENAMEASIDENTIFIER___.<#UseCase1#>.Response
    {
        //Let the worker do some work and return the results
    }
    
    func handle(_ request: ___FILEBASENAMEASIDENTIFIER___.<#UseCase2#>.Request) -> ___FILEBASENAMEASIDENTIFIER___.<#UseCase2#>.Response
    {
        //Let the worker do some work and return the results
    }
}
