//
//  File.swift
//  
//
//  Created by Tanin on 21/07/2021.
//

import Foundation

public struct JobFarewellMessage {
    
    public let positiveAdjective: String
    public let yourName: String
    public let yourEmail: String
    public let previousCompanyName: String
    public let yourLastDay: String
    public var phoneNumber: String?
    
    var email: String {
        """
        Hi All,
        
        As you may have already heard, I’m leaving \(previousCompanyName), and my last day is coming up on \(yourLastDay).

        I wanted to take a moment to let you know how much I’ve enjoyed my time here—and you’ve played a part in that. It’s been \(positiveAdjective) working with you and getting to know you. The people here at \(previousCompanyName) have honestly been one of the best parts of working here.

        I definitely hope you’ll keep in touch. My personal email address is \(yourEmail)\(phoneNumber == nil ? "" : " and my phone number is \(phoneNumber!)"), so don’t hesitate to reach out whenever.

        Wishing you all the best!
        \(yourName)
        """
    }
}

public class JobFarewellMessageBuilder {
    
    public private(set) var positiveAdjective: String = "Great"
    public private(set) var yourName: String = "Elon"
    public private(set) var yourEmail: String = "elonmusk@spacex.com"
    public private(set) var previousCompanyName: String = "Paypal"
    public private(set) var yourLastDay: String = "1st October 2000"
    public private(set) var phoneNumber: String? = nil
    
    public func setPositiveAdjective(_ string: String) -> Self {
        self.positiveAdjective = string
        return self
    }
    
    public func setName(_ string: String) -> Self {
        self.yourName = string
        return self
    }
    
    public func setEmail(_ string: String) -> Self {
        self.yourEmail = string
        return self
    }
    
    public func setPreviousCompanyName(_ string: String) -> Self {
        self.previousCompanyName = string
        return self
    }
    
    public func setLastDay(_ string: String) -> Self {
        self.yourLastDay = string
        return self
    }
    
    public func setPhoneNumber(_ string: String) -> Self {
        self.phoneNumber = string
        return self
    }
    
    public func build() -> JobFarewellMessage {
        return JobFarewellMessage(
            positiveAdjective: positiveAdjective,
            yourName: yourName,
            yourEmail: yourEmail,
            previousCompanyName: previousCompanyName,
            yourLastDay: yourLastDay,
            phoneNumber: phoneNumber
        )
    }
    
}
