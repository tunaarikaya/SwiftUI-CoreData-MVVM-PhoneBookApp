//
//  KisiDetaySayfa.swift
//  KisilerUygulamasi
//
//  Created by Kasım on 1.08.2024.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = KisilerModel()
    
    var viewModel = KisiDetayViewModel()
    
    var body: some View {
        VStack(spacing: 100){
            TextField("Kişi Ad",text: $tfKisiAd).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            TextField("Kişi Tel",text: $tfKisiTel).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("GÜNCELLE"){
                viewModel.guncelle(kisi: kisi, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
            
        }.navigationTitle("Kişi Detay")
            .onAppear{
                tfKisiAd = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
            }
    }
}

#Preview {
    KisiDetaySayfa()
}
