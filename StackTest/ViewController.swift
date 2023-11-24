//
//  ViewController.swift
//  StackTest
//
//  Created by Nick Kocharhook on 2023-11-23.
//

import Cocoa

class ViewController: NSViewController {
    var itemCount = 15
    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addItem(_ sender: Any) {
        itemCount += 5
        collectionView.reloadData()
    }
    
    @IBAction func removeItems(_ sender: Any) {
        itemCount -= 5
        collectionView.reloadData()
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSCollectionViewDataSource {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemCount
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        guard let item = self.storyboard?.instantiateController(withIdentifier: "MyItem") as? NSCollectionViewItem else {
            return NSCollectionViewItem()
        }
        
        return item
    }
    
    
}
