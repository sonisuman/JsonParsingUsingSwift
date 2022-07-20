import UIKit
import Foundation

struct Customer {
  var firstName: String
  var lastname: String
  var age: Int
}

extension Customer {
  init?(dictonary: [String: Any]) {
    guard  let firstname = dictonary["firstname"] as? String,
           let lastname =  dictonary["lastname"] as? String,
           let age = dictonary["age"] as? Int
    else {return nil}
    
    self.firstName = firstname
    self.lastname = lastname
    self.age = age
  }
}
let json = """
{
"firstname": "soni",
"lastname": "suman",
"age": 30
}

""".data(using: .utf8)

if let dataDictonary = try! JSONSerialization.jsonObject(with: json!, options: .allowFragments) as? [String: Any] {
  let customer = Customer(dictonary: dataDictonary)
  print(customer as Any)
}

