//
//  SampleData.swift
//  Traverse-SwiftUI
//
//  Created by Aiden Seibel on 3/31/22.
//

import Foundation
import MapKit
import CoreLocation

var exampleAccounts: [account] = [
    account(firstName: "Yash", lastName: "Shah", verification: true, email: "yash.shah@ys.com", dateJoined: Date(), phoneNumber: "5129276152", numberOfItemsRented: 5, numberOfItemsListed: 3),
    account(firstName: "Jay", lastName: "Kannam", verification: true, email: "jay.kannam@jk.com", dateJoined: Date()),
    account(firstName: "Alan", lastName: "Reyes", verification: true, email: "alan.reyes@ar.com", dateJoined: Date()),
    account(firstName: "Miles", lastName: "Belknap", verification: true, email: "miles.belknap@mb.com", dateJoined: Date()),
    account(firstName: "Aiden", lastName: "Seibel", verification: true, email: "aiden.seibel@as.com", dateJoined: Date()),
    account(firstName: "Matthew", lastName: "Knox", verification: true, email: "matthew.know@mk.com", dateJoined: Date()),
    account(firstName: "Ganesh", lastName: "Sadasivan", verification: true, email: "ganesh.sadasivan@gs.com", dateJoined: Date()),
    account(firstName: "Nathan", lastName: "Harward", verification: true, email: "nathan.harward@nh.com", dateJoined: Date()),
    account(firstName: "Cesar", lastName: "Gamez", verification: true, email: "cesar.gamez@cg.com", dateJoined: Date())
]

var exampleReviews: [review] = [
    review(reviewAccount: exampleAccounts[1], dateReviewed: Date(), numberOfStars: 4, description: "Solid"),
    review(reviewAccount: exampleAccounts[2], dateReviewed: Date(), numberOfStars: 3, description: "I wouldn't recommend unless you're in a tight stint and really need it."),
    review(reviewAccount: exampleAccounts[3], dateReviewed: Date(), numberOfStars: 5, description: "Fantastic, worked perfect, owner is really nice guy"),
    review(reviewAccount: exampleAccounts[4], dateReviewed: Date(), numberOfStars: 4, description: "Meh it's okay"),
    review(reviewAccount: exampleAccounts[5], dateReviewed: Date(), numberOfStars: 5, description: "Didn't break, 10/10"),
    review(reviewAccount: exampleAccounts[6], dateReviewed: Date(), numberOfStars: 5, description: "Sometimes the experience is not the best, but this definitely was.")
]

var exampleListings: [listing] = [
    listing(price: 27.00, rating: 4.76, name: "Power Washer", description: "I bought this two years ago new from Home Depot. It's sitting in my garage so I thought I'd post it. Only $27, barely used", address: "123 Easy St.", imageName: "01", verified: true, owner: exampleAccounts[0], inclusions: ["Soap compartment", "Extension cords", "PSI Comp", "Nozzle w trigger"], reviews: [exampleReviews[1], exampleReviews[2]], category: "Power Tools", isAvailable: false),
    
    listing(price: 12.00, rating: 4.21, name: "Electric Skateboard", description: "Has stickers on bottom. Rechargable battery, it's about four years old but still in great condition", address: "123 Easy St.", imageName: "02", verified: false, owner: exampleAccounts[0], inclusions: ["Charging cable", "Extra battery"], reviews: [exampleReviews[3], exampleReviews[4]], category: "Recreation", isAvailable: true),
    
    listing(price: 31.00, rating: 5.0, name: "Generator", description: "In electricity generation, a generator is a device that converts motive power into electrical power for use in an external circuit. Sources of mechanical energy include steam turbines, gas turbines, water turbines, internal combustion engines, wind turbines and even hand cranks. - Wikipedia", address: "123 Easy St.", imageName: "03", verified: true, owner: exampleAccounts[0], inclusions: ["Gasoline", "Extension cords", "all the works"], reviews: [exampleReviews[5], exampleReviews[0]], category: "Power Tools", isAvailable: true),
    
    listing(price: 34.00, rating: 3.57, name: "Microphone", description: "My pride and joy. I've used this for gaming for years. Good luck with destroying noobs with this bad boy, nothing feels better", address: "123 Easy St.", imageName: "04", verified: true, owner: exampleAccounts[0], reviews: [exampleReviews[1], exampleReviews[2]], category: "Electronics", isAvailable: false),
    
    listing(price: 18.00, rating: 4.12, name: "Canon Camera", description: "EOS Rebel T8i EF-S 18-55mm IS STM Lens Kit Equipped with a 24.1 Megapixel CMOS (APS-C) sensor, DIGIC 8 image processor and an ISO range of 100-25600 (expandable to 51200**). continuous shooting of up to 7 frames per second.", address: "123 Easy St.", imageName: "05", verified: false, owner: exampleAccounts[4], reviews: [exampleReviews[3], exampleReviews[4]], category: "Electronics", isAvailable: false),
    
    listing(price: 22.00, rating: 5.0, name: "Keyboard", description: "It's like a piano but better. Has all connections. DM me for delivery, I'm out of town these next few weeks.", address: "123 Easy St.", imageName: "06", verified: true, owner: exampleAccounts[5], reviews: [exampleReviews[5], exampleReviews[0]], category: "Electronics", isAvailable: true),
    
    listing(price: 12.00, rating: 2.23, name: "Guitar", description: "4 years old, like new. Has been rented out 12 previous times.", address: "123 Easy St.", imageName: "07", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Miscellaneous", isAvailable: true),
    
    listing(price: 8.00, rating: 1.34, name: "Soccer Ball", description: "For the kids.", address: "123 Easy St.", imageName: "08", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Sports & Outdoors", isAvailable: false),
    
    listing(price: 24.00, rating: 4.98, name: "Mountain Bike", description: "4 years old, like new. Has been rented out 12 previous times.", address: "123 Easy St.", imageName: "09", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Sports & Outdoors", isAvailable: true),
    
    listing(price: 6.00, rating: 3.5, name: "Basketball", description: "Bounces high, made for pickup", address: "123 Easy St.", imageName: "10", verified: true, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Sports & Outdoors", isAvailable: true),
    
    listing(price: 24.00, rating: 2.67, name: "Power Drill", description: "Drills well. What else?", address: "123 Easy St.", imageName: "11", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Power Tools", isAvailable: false),
    
    listing(price: 36.00, rating: 3.99, name: "Speaker", description: "High quality, great bass", address: "123 Easy St.", imageName: "12", verified: true, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Electronics", isAvailable: false),

    listing(price: 24.00, rating: 4.67, name: "Pool Speaker", description: "Doesn't mind a little water", address: "123 Easy St.", imageName: "13", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Pool Equipment", isAvailable: true),
    
    listing(price: 24.00, rating: 4.87, name: "Pool Robot", description: "12 years in and hasn't failed me", address: "123 Easy St.", imageName: "14", verified: false, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Pool Equipment", isAvailable: false),
    
    listing(price: 24.00, rating: 4.58, name: "Roomba", description: "Mother of five here, this thing is amazing.", address: "123 Easy St.", imageName: "15", verified: true, owner: exampleAccounts[6], reviews: [exampleReviews[1], exampleReviews[2]], category: "Home", isAvailable: true),


]


var exampleCategories: [String] = ["Power Tools", "Electronics", "Pool Equipment", "Sports & Outdoors", "Home",  "Recreation", "Miscellaneous"]


var exampleAddresses: [address] = [
    address(streetAddress: "1600 Pennsylvania Drive", city: "Washington", country: "United States", zipCode: "190101", usState: "District of Columbia")
]



var exampleMapAnnotations: [mapAnnotation] = [
    mapAnnotation(listing: exampleListings[0], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[1], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[2], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[3], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[4], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[5], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[6], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[7], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[8], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[9], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[10], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[11], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[12], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[13], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7))),
    mapAnnotation(listing: exampleListings[14], coordinate: CLLocationCoordinate2D(latitude: Double.random(in: 30.4..<30.6), longitude: Double.random(in: -97.9 ..< -97.7)))
]
