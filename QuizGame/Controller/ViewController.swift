
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var TFLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    func updateQuestion(){//更新問題
         
         if questionNumber <= allQuestions.list.count - 1{
             let myquestion = allQuestions.list[questionNumber]
             imageView.image = UIImage(named: (myquestion.questionImage))
             //抓allQuestions陣列裡的問題字串
             questionLabel.text = myquestion.question
             
             buttons[0].setTitle(myquestion.optionA, for: [])
             buttons[1].setTitle(myquestion.optionB, for: [])
             buttons[2].setTitle(myquestion.optionC, for: [])
             buttons[3].setTitle(myquestion.optionD, for: [])
             selectedAnswer = myquestion.correctAnswer
             
         }else{
             //結束遊戲 重設開始新局
             let alert = UIAlertController(title: "啊不就好棒棒", message: "分數：\(score)/100\n結束遊戲,再來一場？", preferredStyle: .alert)
             let restartAction = UIAlertAction(title: "開始新局", style: .default, handler: {action in self.restartQuiz()})
             alert.addAction(restartAction)
             present(alert, animated: true, completion: nil)
         }
         updateUI()
         
     }
    
    func updateUI(){ //Custom進度條，使用view來控制
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //載入題目、分數進度條
        updateQuestion()
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        //如果button的tag等於答案selectedAnswer
        if sender.tag == selectedAnswer{
            print("correct")
            
            score += 100 / allQuestions.list.count
        }else{
            print("wrong")
            
        }
        questionNumber += 1
        updateQuestion()
        updateUI()
        
    }
    
 
    func restartQuiz(){//重新開始遊戲
         score = 0
         questionNumber = 0
         updateQuestion()
     }
}

