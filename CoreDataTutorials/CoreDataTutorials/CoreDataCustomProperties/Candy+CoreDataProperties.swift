//
//  Candy+CoreDataProperties.swift
//  CoreDataTutorials
//
//  Created by Alberto Landi Cortiñas on 3/15/22.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var wrappedName: String {
        name ?? "Unknown candy"
    }

}

extension Candy : Identifiable {

}
