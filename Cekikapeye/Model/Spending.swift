//
//  Spending.swift
//  Cekikapeye
//
//  Created by Ambroise COLLON on 21/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation
import CoreData

class Spending: NSManagedObject {
    static var all: [Spending] {
        // create request
        let request: NSFetchRequest<Spending> = Spending.fetchRequest()
        // execute request, ie get the saved data
        guard let spendings = try? AppDelegate.viewContext.fetch(request) else {
            return []
        }
        return spendings
    }
}
