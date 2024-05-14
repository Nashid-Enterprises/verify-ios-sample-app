//
//  ViewController.swift
//  NashidIDVSDKDemo
//
//  Created by Nashid on 20/03/24.
//

import UIKit
import IDVSDK

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    NashidSDK.shared.initializeSDK(
      token: "MIO7NIJsfkJsE8HJJOB1Ff3xpysU7k1HE2NhslTCKA2qaIfIS9",
      id: "MD7ECJ0K48AJP6S",
      baseUrl: "https://dashboard.test.projectnid.com/api/",
      employeeEmail: "sotopo5208@ikumaru.com",
      languageId: "en"
    )
    
    NashidSDK.shared.scanResultCallback = { result, type in
      print(result)
      print(type)
    }
  }
  
  @IBAction func onTapDocument() {
    NashidSDK.shared.documentScan()
  }
  
  @IBAction func onTapPassport() {
    NashidSDK.shared.passportScan()
  }
}

