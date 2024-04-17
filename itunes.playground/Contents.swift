import UIKit

var urlComponents = URLComponents(string: "https://itunes.apple.com/search")!

urlComponents.queryItems = ["term":"Apple",
                            "media":"movie",
                            "attribute":"actorTerm",
                            "limit":"34",
                            "lang":"en_us"].map{URLQueryItem(name: $0.key, value: $0.value)}



Task{
    let (data,response) = try await URLSession.shared.data(from: urlComponents.url!)
    
   if let httpResponse = response as? HTTPURLResponse,
       httpResponse.statusCode == 200{
             if let stringData = String(data: data, encoding: .utf8){
                print(stringData)
             }
             }else{
                 print("Not worked")
        }
    
}

