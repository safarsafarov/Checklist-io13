import SwiftUI

struct ChecklistView: View {

    // Properties
    // ==========

    @ObservedObject var checklist = Checklist()
    @State var newChecklistItemViewIsVisible = false

    // User interface content and layout
    var body: some View {
        NavigationView {
            List {
                ForEach(checklist.items) { checklistItem in
                    RowView(checklistItem: self.$checklist.items[index])
                }
                        .onDelete(perform: checklist.deleteListItem)
                        .onMove(perform: checklist.moveListItem) }
                    .navigationBarItems( leading: Button(action:
                    { self.newChecklistItemViewIsVisible = true }) { Image(systemName: "plus")
                    },
                            trailing: EditButton()
                    )
                    .navigationBarTitle("Checklist") .onAppear() {
                        self.checklist.printChecklistContents()
                        self.checklist.saveListItems()}
        }
                .sheet(isPresented: $newChecklistItemViewIsVisible) {
                    NewChecklistItemView(checklist: self.checklist) }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistView()
    }
}
