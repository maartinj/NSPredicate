/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
 ## Introducing NSPredicate
 An introduction to NSPredicate formats, arguments and format options..
 
 */
import Foundation

code(for: "NSPredicate Formats") {
    // The athlete with the first name "Carson"
    let firstNameIsCarson = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName == 'Carson'"))
//    dump(firstNameIsCarson)
    
    // All athletes with a first name containing the letter c
    let firstNameContainsC = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "firstName CONTAINS[c] 'c'"))
//    dump(firstNameContainsC)
    
    // All athletes making a salary greater than $100 million per year
    let highEarners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary > 100"))
//    dump(highEarners)
    
    // All athletes earning between $70 and $100 million a year
    let midRangeErners = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.salary BETWEEN {70, 100}"))
//    dump(midRangeErners)

    //--------- More Formats Where NSPredicate Shines ------------------
    
    // Athletes with a last name beginning with the letter m
    let lastNameBeginsWithM = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "lastName BEGINSWITH[c] 'm'"))
//    dump(lastNameBeginsWithM)
    
    // Athletes playing some kind of 'ball' sport
    let ballGameAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.name LIKE[c] '*ball'"))
//    dump(ballGameAthletes)
    
    // Athletes playing a ball game beginning with the letter 'f'
    let fBallAthletes = Athlete.allNSArray
        .filtered(using: NSPredicate(format: "sport.name LIKE[c] 'f*ball'"))
    dump(fBallAthletes)
    
}

code(for: "NSPredicate Argments") {
    // Convert all examples above to use NSPredicate arguments
}

code(for: "Comparison Predicate Options") {
// Athletes with 'junior' as a suffix for their last name

}

/*:
 
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
