//
//  Singer+CoreDataProperties.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/15/22.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    var wrappedFirstName: String {
        firstName ?? "Unknown first name"
    }
    
    var wrappedLastName: String {
        lastName ?? "Unknown last name"
    }

}

extension Singer : Identifiable {

}
