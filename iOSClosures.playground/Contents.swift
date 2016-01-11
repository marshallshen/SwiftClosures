//: iOS Closures

import UIKit

let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
let url = NSURL(string: "http://blog.teamtreehouse.com/api/get_recent_summary/?count=20")
let request = NSURLRequest(URL: url!)

// Type Alias
typealias JSONDictionaryCompletion = ([String:AnyObject]?) -> ()
func downloadJSONFromURL(completion: JSONDictionaryCompletion){
    //So elegant!
}

func getRecentBlogPosts(completion: (NSURLResponse! -> Void)) {
    
    _ = session.downloadTaskWithRequest(request) {
        (let url, let response, let error) in
        completion(response)
        
    }
}

getRecentBlogPosts {
    (let response) in
    // Start body of method
}