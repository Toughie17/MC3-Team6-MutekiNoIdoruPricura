//
//  StoargeManager.swift
//  LovelyCrane
//
//  Created by 235 on 2023/07/21.
//

import SwiftUI
import FirebaseStorage
import Firebase
class StoargeManager {
    static let shared = StoargeManager()
    let stoarge = Storage.storage().reference()
    private var imageReference: StorageReference {
        stoarge.child("users").child(Auth.auth().currentUser?.uid ?? "id1")
    }
    func uploadImage(img: UIImage) async throws -> (String){
        var data = Data()
        data = img.jpegData(compressionQuality: 0.4)!
        let metaData = StorageMetadata()
        metaData.contentType = "image/png"
        let path = "\(Date()).png"
        let returnedMetaData = try await imageReference.child(path).putDataAsync(data,metadata: metaData)
        guard let returnedPath = returnedMetaData.path else {
            throw URLError(.badServerResponse)
        }
        return (returnedPath)
    }
}
