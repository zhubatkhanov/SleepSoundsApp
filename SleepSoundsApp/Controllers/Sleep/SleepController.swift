//
//  ViewController.swift
//  SleepSoundsApp
//
//  Created by Sanzhar Zhubatkhanov on 04.01.2023.
//

import UIKit

class SleepController: BaseController {
    
    var categories = [
        "All",
        "Instrumental",
        "Ambience",
        "Classical",
        "Ethnic",
        "Meditation",
        "All",
        "Instrumental",
        "Ambience",
        "Classical",
        "Ethnic",
        "Meditation",
    ]
    
    var collectionView: UICollectionView!
    
    private var layout: UICollectionViewFlowLayout {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sleep"
        setContstraints()
       
        self.collectionView = UICollectionView(frame: CGRect(x: 8, y: 0, width: view.frame.width - 16, height: 50), collectionViewLayout: self.layout)
        self.collectionView.backgroundColor = .white
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(CollectionCellView.self, forCellWithReuseIdentifier: "cell")
        self.collectionView.reloadData()
        self.view.addSubview(collectionView)
    }
    
    func setContstraints() {
        
    }
}

extension SleepController: UICollectionViewDelegate {
    
}

extension SleepController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionCellView = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCellView
            cell.label?.text = categories[indexPath.row]
        return cell
    }
}

extension SleepController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }
}

