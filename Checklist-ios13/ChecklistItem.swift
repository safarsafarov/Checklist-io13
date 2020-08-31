//
// Created by Safar Safarov on 2020/8/31.
// Copyright (c) 2020 safarslife.dev. All rights reserved.
//

import Foundation

struct ChecklistItem: Identifiable {
    let id: UUID()
    var name: String
    var isChecked: Bool = false
}