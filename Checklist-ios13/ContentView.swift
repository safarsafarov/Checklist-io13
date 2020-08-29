import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("High priority")) {
                Text("Walk the dog")
                Text("Brush my teeth")
                Text("Learn iOS development")
                Text("Soccer practice")
                Text("Eat ice cream")
            }
            Section(header: Text("Low priority")) {
                Text("Soccer practice")
                Text("Eat ice cream")
            }
        }
        .navigationBarTitle("CheckList")
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
