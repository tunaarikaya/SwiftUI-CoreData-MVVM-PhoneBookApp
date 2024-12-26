//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Kasım on 1.08.2024.
//

import Foundation
import CoreData
class AnasayfaViewModel : ObservableObject{
    @Published var kisilerListesi = [KisilerModel]()
    let context = persistentContainer.viewContext
    
    func kisileriYukle(){
        do{
            let fr = KisilerModel.fetchRequest()//veri çekme
            let liste = try context.fetch(fr)
            kisilerListesi = liste // tetikleme
        }catch {
            print(error.localizedDescription)
        }
       
    }
    
    func ara(aramaKelimesi:String){
        do{
            let fr = KisilerModel.fetchRequest()//veri çekme
            fr.predicate = NSPredicate(format: "kisi_ad CONTAINS[c] %@", aramaKelimesi)
            let liste = try context.fetch(fr)
            kisilerListesi = liste // tetikleme
        }catch {
            print(error.localizedDescription)
        }
        
    }
    
    func sil(kisi:KisilerModel){
        context.delete(kisi)
        saveContext()
        kisileriYukle()
    }
}
