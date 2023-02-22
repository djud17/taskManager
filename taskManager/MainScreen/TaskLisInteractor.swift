//
//  TaskLisInteractor.swift
//  taskManager
//
//  Created by Давид Тоноян  on 22.02.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol TaskLisBusinessLogic
{
  func doSomething(request: TaskLis.Something.Request)
}

protocol TaskLisDataStore
{
  //var name: String { get set }
}

class TaskLisInteractor: TaskLisBusinessLogic, TaskLisDataStore
{
  var presenter: TaskLisPresentationLogic?
  var worker: TaskLisWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: TaskLis.Something.Request)
  {
    worker = TaskLisWorker()
    worker?.doSomeWork()
    
    let response = TaskLis.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
