//
// Created by Safar Safarov on 2020/8/31.
// Copyright (c) 2020 safarslife.dev. All rights reserved.
//

import Foundation
import SwiftUI


struct EditChecklistItemView: View {
    @State var checklistItem: ChecklistItem
    var body: some View {
        Form {
            TextField("Name", text: $checklistItem.name)
            Toggle("Completed", isOn: $checklistItem.isChecked)
        }
    }
}

struct EditChecklistItemView_Previews: PreviewProvider {
    static var previews: some View {
        EditChecklistItemView(checklistItem: .constant(ChecklistItem(name:
        "Sample item")))
    }
}