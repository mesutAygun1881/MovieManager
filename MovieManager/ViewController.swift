//
//  ViewController.swift
//  MovieManager
//
//  Created by Mesut Aygün on 19.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemTeal
        view.addSubview(imageTop)
        view.addSubview(movieLabel)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(orLabel)
        view.addSubview(websiteButton)
        view.addSubview(bottomLabel)
        
        
    }
    private let imageTop : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "cameraTransparent")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    private let movieLabel : UILabel = {
        let label = UILabel()
        label.text = "The Movie Manager"
        label.backgroundColor = UIColor.systemTeal
        label.textColor = UIColor.white
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        return label
    }()
    private let loginLabel : UILabel = {
        let label = UILabel()
        label.text = "Login with Email"
        label.backgroundColor = UIColor.systemTeal
        label.textColor = UIColor.white
        label.font = label.font.withSize(15)
        label.textAlignment = .center
        return label
    }()
    private let emailTextField : UITextField = {
        let field = UITextField ()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 9
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.red.cgColor
        field.placeholder = " Email.."
        
        field.backgroundColor = UIColor(named: "myColor")
        return field
    }()
    private let passwordTextField : UITextField = {
        let field = UITextField ()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 9
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.red.cgColor
        field.placeholder = " Password.."
        
        field.backgroundColor = UIColor(named: "myColor")
        return field
    }()
    private let loginButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20 , weight : .bold)
        button.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        return button
    }()
    private let orLabel : UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.backgroundColor = UIColor.systemTeal
        label.textColor = UIColor.white
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        return label
    }()
    private let websiteButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login via Website", for: .normal)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20 , weight : .bold)
        return button
    }()
    private let bottomLabel : UILabel = {
        let label = UILabel()
        label.text = "This product uses the TMDb API but is not endorsed or certified by TMDb"
        label.backgroundColor = UIColor.systemTeal
        label.textColor = UIColor.white
        label.font = label.font.withSize(14)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size : CGFloat = view.frame.size.width / 2
        imageTop.frame = CGRect(x: (view.frame.size.width - size) / 2 , y: 30, width: size, height: 160)
        movieLabel.frame = CGRect(x: 30, y: imageTop.bottom + 10, width: view.frame.size.width - 60, height: 40)
        loginLabel.frame = CGRect(x: 30, y: movieLabel.bottom + 35, width: view.frame.size.width - 60, height: 40)
        emailTextField.frame = CGRect(x: 30, y: loginLabel.bottom + 5, width: view.frame.size.width - 60 , height: 40)
        passwordTextField.frame = CGRect(x: 30, y: emailTextField.bottom + 5, width: view.frame.size.width - 60 , height: 40)
        loginButton.frame = CGRect(x: 30, y: passwordTextField.bottom + 5, width: view.frame.size.width - 60 , height: 40)
        orLabel.frame = CGRect(x: 30, y: loginButton.bottom + 5, width: view.frame.size.width - 60 , height: 40)
        websiteButton.frame = CGRect(x: 30, y: orLabel.bottom + 5, width: view.frame.size.width - 60 , height: 40)
        bottomLabel.frame = CGRect(x: 30, y: websiteButton.bottom + 30 , width: view.frame.size.width - 60 , height: 40)
        
    }
    @objc func loginButtonClicked(){
        let vc = SearchViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

