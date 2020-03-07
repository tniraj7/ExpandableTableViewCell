import UIKit

class ExpandableTableViewTableViewController: UITableViewController {

    var isExapnded: Bool = false

    var courseData = [
        
        Course(image: "Illustration1", title: "SwiftUI", text: "Learn how to build custom views and controls in SwiftUI with advanced composition, layout, graphics, and animation. See a demo of a high performance, animatable control and watch it made step by step in code. Gain a deeper understanding of the layout system of SwiftUI.", date: "JUN 26", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Illustration2", title: "Framer X", text: "Learn how to build custom views and controls in SwiftUI with advanced composition, layout, graphics, and animation. See a demo of a high performance, animatable control and watch it made step by step in code. Gain a deeper understanding of the layout system of SwiftUI.", date: "JUN 11", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Illustration3", title: "CSS Layout", text: "Learn how to combine CSS Grid, Flexbox, animations and responsive design to create a beautiful prototype in CodePen.", date: "MAY 26", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Illustration4", title: "React Native Part 2", text: "Learn how to implement gestures, Lottie animations and Firebase login.", date: "MAY 15", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Certificate1", title: "Unity", text: "Unity course teaching basics, C#, assets, level design and gameplay", date: "MAR 19", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Certificate2", title: "React Native for Designers", text: "Build your own iOS and Android app with custom animations, Redux and API data.", date: "FEB 14", isExpanded: false, chapters: ["1", "2", "3", "4"]),
        
        Course(image: "Certificate3", title: "Vue.js", text: "Make a dashboard web-app with a complete login system, dark mode, and animated charts for your data.", date: "JAN 23", isExpanded: false, chapters: ["1", "2", "3", "4"])
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Expandable Cells"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tableView.tableFooterView = UIView()
        self.tableView.tableFooterView?.backgroundColor = .lightGray
        self.tableView.style
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandableCell", for: indexPath) as! ExpandableTableViewCell
        cell.setupCell(text: courseData[indexPath.row].title)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        if  indexPath.row == 0 {
//            isExapnded.toggle()
//        }
        courseData[indexPath.row].isExpanded.toggle()
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == 0 {
//            return (isExapnded ? 250 : 50)
//        }
        
        return courseData[indexPath.row].isExpanded ? 250 : 50
    }
    
    
}
