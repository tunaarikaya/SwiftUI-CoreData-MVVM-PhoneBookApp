//
//  KisilerSatir.swift
//  KisilerUygulamasi
//
//  Created by Kasım on 1.08.2024.
//

import SwiftUI

struct KisilerSatir: View {
    var kisi = KisilerModel()
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16){
            Text(kisi.kisi_ad!).font(.system(size: 25))
            Text(kisi.kisi_tel!).font(.system(size: 20)).foregroundStyle(.gray)
        }
    }
}
