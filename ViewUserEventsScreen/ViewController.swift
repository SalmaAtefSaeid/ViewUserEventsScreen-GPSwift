//
//  ViewController.swift
//  ViewUserEventsScreen
//
//  Created by Salma Atef Saeid on 5/30/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    var eventList = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var event1 = Event(eventTitle: "title1", eventImage: "image1.jpg", eventDate: "1/1/2019")
        var event2 = Event(eventTitle: "title2", eventImage: "image2.jpg", eventDate: "2/1/2019")
        var event3 = Event(eventTitle: "title3", eventImage: "image3.jpg", eventDate: "3/1/2019")
        eventList.append(event1)
        eventList.append(event2)
        eventList.append(event3)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventCell", for: indexPath) as! EventCollectionViewCell
        cell.eventImageView.image = UIImage(named: eventList[indexPath.item].eventImage)
        cell.eventTitleLabel.text = eventList[indexPath.item].eventTitle
        cell.eventDateLabel.text = eventList[indexPath.item].eventDate
        return cell
    }
}

