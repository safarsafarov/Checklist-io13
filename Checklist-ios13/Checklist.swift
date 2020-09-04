import Foundation
import SwiftUI



class Checklist: ObservableObject {

    // Properties
    // ==========

    @Published var items = [
        ChecklistItem(name: "Walk the dog", isChecked: false),
        ChecklistItem(name: "Brush my teeth", isChecked: false),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: false),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
    ]

    // Methods
    // =======

    init() {
        print("Documents directory is: \(documentsDirectory())")
        print("Data file path is: \(dataFilePath())")
    }

    func printChecklistContents() {
        for item in items {
            print(item)
        }
        print("========================")
    }

    func deleteListItem(whichElement: IndexSet) {
        items.remove(atOffsets: whichElement)
        printChecklistContents()
    }

    func moveListItem(whichElement: IndexSet, destination: Int) {
        items.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }

    func documentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentationDirectory,
                                             in: .userDomainMask)
        return paths[0]
    }

    func dataFilePath() -> URL {
        return
        documentsDirectory().appendingPathComponent("Checklist.plist")
    }
}