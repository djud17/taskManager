//
//  LoginInteractor.swift
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

protocol ILoginBusinessLogic {
	
	/// Функция логина, отправляет запрос валидации
	/// - Parameter request: Запрос с данными для логина
	func login(request: LoginModel.Request)
}

class LoginInteractor: ILoginBusinessLogic {
	var presenter: ILoginPresentationLogic?
	var worker: LoginWorker?

	// MARK: Do something

	func login(request: LoginModel.Request) {
		worker = LoginWorker()
		let login = Login(rawValue: request.login)
		let pass = Password(rawValue: request.password)
		let result = worker?.login(login: login, password: pass) ?? false
		let response = LoginModel.Response(isLoginSuccessed: result)
		presenter?.presentSomething(response: response)
	}
}
