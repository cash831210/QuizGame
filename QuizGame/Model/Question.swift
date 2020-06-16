
import Foundation

class Question {
    
    let questionImage: String
    let question: String
    let optionA:String
    let optionB:String
    let optionC:String
    let optionD:String
    let correctAnswer: Int
    
    internal init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int) {
        self.questionImage = image
        self.question = questionText
        self.optionA = choiceA
        self.optionB = choiceB
        self.optionC = choiceC
        self.optionD = choiceD
        self.correctAnswer = answer
    }
}
