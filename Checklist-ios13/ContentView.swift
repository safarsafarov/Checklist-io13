import SwiftUI

struct ContentView: View {
    // Array
    @State var checklistItems = [
        "Take vocal lessons",
        "Record hit single",
        "Learn every martial art",
        "Design costume",
        "Design crime-fighting vehicle", "Come up with superhero name", "Befriend space raccoon",
        "Save the world",
        "Star in blockbuster movie",
    ]

    // View
    var body: some View {
        NavigationView {
          List {
              ForEach(checklistItems, id: \.self) { item in
                  Text(item)
              }
              .onDelete(perform:  deleteListItem)
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
