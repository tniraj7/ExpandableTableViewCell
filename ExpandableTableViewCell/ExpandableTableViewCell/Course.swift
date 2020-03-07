import Foundation

struct Course: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
    var isExpanded: Bool
    var chapters: [String]
}
