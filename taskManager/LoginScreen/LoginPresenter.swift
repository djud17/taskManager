//
//  LoginPresenter.swift
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

protocol ILoginPresentationLogic {
	
	///  Функция сообщает презентеру, что нужно отобразить
	/// - Parameter response: Ответ интерактора от которого зависит отображение
	func presentSomething(response: LoginModel.Response)
}

final class LoginPresenter: ILoginPresentationLogic {
	weak var viewController: ILoginDisplayLogic?

	// MARK: Do something

	func presentSomething(response: LoginModel.Response) {
		let viewModel: LoginModel.ViewModel = response.isLoginSuccessed
		? .success
		: .failure("Неправильный логин или пароль!")
		viewController?.renderData(with: viewModel)
	}
}
