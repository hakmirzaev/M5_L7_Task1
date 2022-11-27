//
//  HomeScreen.swift
//  M5_L7_Task1
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            Button(action: {
                UserDefaults.standard.setValue(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Text("Logout").foregroundColor(.red)
            })
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.red),
                trailing: Image(systemName: "location").foregroundColor(.red)
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
