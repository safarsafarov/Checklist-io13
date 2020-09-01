//
// Created by Safar Safarov on 2020/8/31.
// Copyright (c) 2020 safarslife.dev. All rights reserved.
//

import Foundation
import SwiftUI



struct NewChecklistItemView: View {
    var checklist: Checklist
    @State var newItemName = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Add new item")
            Form {
                TextField("Enter new item name here", text: $newItemName)
                Button(action: {
                    var newChecklistItem = ChecklistItem(name: self.newItemName)
                    self.checklist.items.append(newChecklistItem)
                    self.checklist.printChecklistContents()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add new item")
                    }
                }
            }
            Text("Swipe down to cancel.")
        }
    }
}

struct newChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewChecklistItemView(checklist: Checklist())
    }
}