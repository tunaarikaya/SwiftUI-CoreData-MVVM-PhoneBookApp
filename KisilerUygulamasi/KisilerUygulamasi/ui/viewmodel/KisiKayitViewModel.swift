//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Kasım on 1.08.2024.
//

import Foundation
import CoreData 


class KisiKayitViewModel {
    let context = persistentContainer.viewContext
    func kaydet(kisi_ad:String,kisi_tel:String){
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        //burada nesneleri eşleştirdik şimdi kayit yapcaz bu önemli !
        saveContext()
    }
}
