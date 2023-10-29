//
//  ApiService.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// Service that contains functions to fetch external APIs
class ApiService {
    
    /// Fetches solar offers from an external API
    ///
    /// - Parameters:
    ///    - request: All request parameters combined as one object
    ///    - completion: The completion of the request
    ///
    public static func getSolarOffers(request: CalculationRequest, completion: @escaping (OffersResponse) -> ()) throws {
        let url = URL(string: "https://www.selfmade-energy.com/api/lead/complete/")!;
        var req = URLRequest(url: url);
        let json = try JSONEncoder().encode(request);
        req.httpBody = json;
        req.httpMethod = "POST";
        req.allHTTPHeaderFields = [
            "Content-Type": "application/json"
        ]
        URLSession.shared.dataTask(with: req) { (data, _, _) in
            do {
                print(String(data: data!, encoding: .utf8))
                let result = try JSONDecoder().decode(OffersResponse.self, from: data!)
                DispatchQueue.main.async {
                    completion(result)
                }
            } catch {
                print(error)
            }
        }
        .resume()
    }
}
