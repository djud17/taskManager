//
//  LoginRouter.swift
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

@objc
protocol ILoginRoutingLogic {
	
	/// Функция показывает сообщение об ошибке
	func showError()
	
	/// Функция показывает главный экран
	func navigateToMainScreen()
}

final class LoginRouter: NSObject, ILoginRoutingLogic {
	weak var viewController: LoginViewController?

	// MARK: Navigation
	
	func showError() {
		let alertController = UIAlertController(
			title: "Ошибка",
			message: "Введены некорректный данные!",
			preferredStyle: .alert
		)
		let okButton = UIAlertAction(title: "Ok", style: .default)
		alertController.addAction(okButton)
		viewController?.present(alertController, animated: true)
	}
	
	func navigateToMainScreen() {
		let taskListAssembly = TaskListAssembly()
		let mainScreen = taskListAssembly.assembly()
		viewController?.present(mainScreen, animated: true)
	}
}
