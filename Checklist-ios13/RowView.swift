//
// Created by Safar Safarov on 2020/9/1.
// Copyright (c) 2020 safarslife.dev. All rights reserved.
//

import Foundation
import SwiftUI

struct RowView: View {
    @State var checklistItem: ChecklistItem

    var body: some View {
        HStack {
            Text(checklistItem.name)
            Spacer()
            Text(checklistItem.isChecked ? "✅" : "🔲")
        }
    }
}

struct RowView_Previews: PreviewProvider { static var previews: some View {
        RowView(checklistItem: ChecklistItem(name: "Sample item"))
    }
}