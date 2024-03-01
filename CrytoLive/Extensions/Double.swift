//
//  Double.swift
//  CrytoLive
//
//  Created by Chris Min on 01/03/2024.
//

import Foundation


extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        formatter.currencySymbol = "$"
        if self > 0.8 {
            // If the number is greater than 0 and has no decimal part, show up to 2 decimal places
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
        } else {
            // If the number includes decimal values, allow all decimal points
            formatter.minimumFractionDigits = 6
            formatter.maximumFractionDigits = 6
        }
        return formatter
    }
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    func toCurrencyString() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentageString() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return "" }
        return numberAsString + "%"
    }
}
