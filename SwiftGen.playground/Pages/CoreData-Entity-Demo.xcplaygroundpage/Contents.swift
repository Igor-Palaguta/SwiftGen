//: #### Other pages
//:
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen images`](Images-Demo)
//: * [Demo for `swiftgen storyboards`](Storyboards-Demo)
//: * [Demo for `swiftgen colors`](Colors-Demo)
//: * [Demo for `swiftgen fonts`](Fonts-Demo)
//: * [Demo for `swiftgen coredata model`](CoreData-Model-Demo)
//: * Demo for `swiftgen coredata mahine` and `swiftgen coredata human`


//: #### Example of code generated by `swiftgen coredata human --file-mask "{{class}}+CoreDataClass.swift" User.xcdatamodeld`

//User+CoreDataClass.swift

import Foundation
import CoreData

@objc(User)
public class User: NSManagedObject {
}

//Session+CoreDataClass.swift

import Foundation
import CoreData

@objc(Session)
public class Session: NSManagedObject {
}


//: #### Example of code generated by `swiftgen coredata machine --file-mask "{{class}}+CoreDataProperties.swift" User.xcdatamodeld`

//User+CoreDataProperties.swift

import Foundation
import CoreData

// swiftlint:disable file_length
// swiftlint:disable type_body_length
extension User {
   public class var entityName: String {
      return "User"
   }

   @NSManaged public var about: String?
   @NSManaged public var email: String
   @NSManaged public var fullName: String
   @NSManaged public var userId: String
   @NSManaged public var userName: String

   @NSManaged public var session: Session?
}

//Session+CoreDataProperties.swift
import Foundation
import CoreData

// swiftlint:disable file_length
// swiftlint:disable type_body_length
extension Session {
   public class var entityName: String {
      return "Session"
   }

   @NSManaged public var sessionId: String

   @NSManaged public var user: User?
}


//: #### Usage Example

import CoreData

let context = createContext()

let user = NSEntityDescription.insertNewObjectForEntityForName(User.entityName, inManagedObjectContext: context) as! User
user.fullName = "John Doe"
user.userName = "john"