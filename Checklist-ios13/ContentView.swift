import SwiftUI

struct ContentView: View {
    @State var checklistItems = [
        "Take vocal lessons",
        "Record hit single",
        "Learn every martial art",
        "Design costume",
        "Design crime-fighting vehicle", "Come up with superhero name", "Befriend space raccoon",
        "Save the world",
        "Star in blockbuster movie",
    ]
    var body: some View {
        NavigationView {
          List {
              ForEach(checklistItems, id: \.self) { item in
                  Text(item)
              }
          }
            .navigationBarTitle("Checklist")
        }
    }
    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
