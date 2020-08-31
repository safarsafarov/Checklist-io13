import SwiftUI

struct ContentView: View {
    // Array
    @State var checklistItems = [
        ChecklistItem(name: "Walk the dog", isChecked: <#T##Bool##Swift.Bool#>),
        ChecklistItem(name: "Brush my teeth", isChecked: <#T##Bool##Swift.Bool#>),
        ChecklistItem(name: "Learn iOS development", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: <#T##Bool##Swift.Bool#>),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
    ]

    // View
    var body: some View {
        NavigationView {
          List {
              ForEach(checklistItems, id: \.self.name) { checklistItems in
                  HStack {
                      Text(checklistItems.name)
                      Spacer()
                      if checklistItems.isChecked {
                          Text("✅")
                      } else {
                        Text("🔲")
                      }
                  }
              }
              .onDelete(perform: deleteListItem)
              .onMove(perform: moveListItem)
          }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear() {
                self.printChecklistContents()
            }
        }
    }

    // Methods
    // =======
    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }

    func deleteListItem(whichElement: IndexSet) {
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContents()
    }

    func moveListItem(whichElement: IndexSet, destination: Int) {
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
