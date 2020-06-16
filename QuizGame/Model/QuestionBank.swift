
import Foundation

class QuestionBank {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "Image-0", questionText: "我是不是皮卡丘？", choiceA: "皮卡丘", choiceB: "皮在癢", choiceC: "比丘尼", choiceD: "皮卡稱", answer: 0))
        list.append(Question(image: "Image-1", questionText: "我是不是伊步？", choiceA: "一步", choiceB: "伊步", choiceC: "兩布", choiceD: "三布", answer: 1))
        list.append(Question(image: "Image-2", questionText: "我是不是種子？", choiceA: "大麻種子", choiceB: "向日葵種子", choiceC: "妙蛙種子", choiceD: "比出種子", answer: 2))
        list.append(Question(image: "Image-3", questionText: "我是不是會噴火？", choiceA: "火龍果", choiceB: "龜藍趴火", choiceC: "燃燒吧火鳥", choiceD: "小火龍", answer: 3))
        list.append(Question(image: "Image-4", questionText: "我是不是烏龜？", choiceA: "龜苓膏", choiceB: "傑尼龜", choiceC: "傑尼斯", choiceD: "威尼斯", answer: 1))
        
    }
}
