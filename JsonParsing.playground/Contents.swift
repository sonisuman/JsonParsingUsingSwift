import UIKit
import Foundation
let json = """
{
"firstname": "soni",
"lastname": "suman",
"age": 30
}

""".data(using: .utf8)

if let dataDictonary = try! JSONSerialization.jsonObject(with: json!, options: .allowFragments) as? [String: Any] {

dataDictonary["firstname"]
dataDictonary["lastname"]
dataDictonary["age"]

}

