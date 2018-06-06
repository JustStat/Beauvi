//
//  Filter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 01.06.2018.
//

import UIKit

enum FilterType: Int {
    case AllFilterType = 0
    case MonumentFilterType
    case ParksFilterType
    case ArchitectureFilterType
    case PhotoFilterType
    case NatureFilterType
    case AnotherFilterType
}

struct Filter {
    var type: FilterType
    var search : String
}
