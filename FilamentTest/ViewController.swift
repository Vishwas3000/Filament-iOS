//
//  ViewController.swift
//  FilamentTest
//
//  Created by Nikhil on 20/05/25.
//

import ARKit
import UIKit

class ViewController: UIViewController {
  private var filamentView: FilamentView!
  private var session: ARSession!

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red

    session = ARSession()
    let configuration = ARWorldTrackingConfiguration()
    session.run(configuration)

    filamentView = FilamentView(frame: view.frame, session: session)
    view.addSubview(filamentView)

    filamentView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      filamentView.topAnchor.constraint(equalTo: view.topAnchor),
      filamentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      filamentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      filamentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
    // Do any additional setup after loading the view.
  }
}
