import Cocoa


func convert(_ rationals: [String]) -> [String]
{
    var totalCount: Double = 0.0
    var converted: [String] = []
    rationals.forEach({ rational in
        totalCount += Double(rational) ?? 0.0
    })
    
    rationals.forEach({ rational in
        converted.append(String(format: "%.3f", (Double(rational) ?? 0.0) / totalCount * 100.0))
    })
    
    return converted
}

let test = [
    "1.5", "3", "6", "1.5"
]

let correctResult = [
    "12.500", "25.000", "50.000", "12.500"
]

let result = convert(test)

if result == correctResult {
    print("SUCCESS")
} else {
    print("FAILURE")
    print("Output: \(result.joined(separator: ", "))")
    print("Expected: \(correctResult.joined(separator: ", "))")
}
