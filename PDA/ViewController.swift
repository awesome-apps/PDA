import UIKit

class ViewController: UIViewController {
    var ArrayOfImages = ["Scared.jpg", "Anxious.jpg", "Sad.jpg", "Angry.jpg", "Surprised.jpg", "Happy.jpg"]
    var ArrayOfAnswers = ["Scared", "Anxious", "Sad", "Angry", "Surprised", "Happy"]
    var RightAnswer:String!
    var ImagesAreDone = [false, false, false, false, false, false]
    var ImagesDone:Bool!
    var QuestionNum:Int!
    var Score:Int!
    @IBOutlet var Image:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagesDone = false
        QuestionNum = 0
        Score = 0
    }
    func ChangeQuestion(){
        if(QuestionNum >= 5){
            print("fhajfkl s")
        }
        else{
            QuestionNum = QuestionNum + 1
            print(String(QuestionNum))
            GetNewImage()
        }
    }
    @IBAction func OptionClicked(sender:UIButton){
        
        ChangeQuestion()
        CheckAnswer(buttonTitle: String(sender.titleLabel!.text!))
        print(String(sender.titleLabel!.text!))
    }
    func GetNewImage(){
        let newIndex = Int(arc4random_uniform(5))
        if(ImagesAreDone[newIndex] == true){
            GetNewImage()
        }
        else{
            Image.image = UIImage(named:ArrayOfImages[newIndex])
            ImagesAreDone[newIndex] = true
            print(String(newIndex))
            RightAnswer = ArrayOfAnswers[newIndex]
        }
    }
    func CheckAnswer(buttonTitle:String){
        if(String(buttonTitle) == RightAnswer){
            print("YAYAYYAY")
            UpdateScore(right: true)
        }
        else{
            print("YU STUPIDDDDD")
            UpdateScore(right: false)
        }
    }
    func UpdateScore(right:Bool){
        if(right == true){
            Score = Score + 1
            print(String(Score))
        }
        else{
            print("h jfshdljkadshf aslfkasfga")
            print(String(Score))
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
