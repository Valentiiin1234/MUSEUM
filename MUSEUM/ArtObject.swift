//
//  ArtObject.swift
//  MUSEUM
//
//  Created by Mac on 13.12.2022.
//

struct ArtObject: Decodable {
    let departments: [Object]
}
struct Object: Decodable {
    let departmentId: Int
    let displayName: String
}
