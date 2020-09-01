//
// Created by Safar Safarov on 2020/8/31.
// Copyright (c) 2020 safarslife.dev. All rights reserved.
//

import Foundation



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
}