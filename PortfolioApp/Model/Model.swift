//
//  Model.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//
import RealmSwift
import Foundation

class Project: Object {
   @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String = ""
    @Persisted var language: String = ""
    @Persisted var tool: String = ""
    @Persisted var highlght: String = ""
    @Persisted var status: String = ""
    @Persisted var detail: String = ""
    @Persisted var url: String = ""
    @Persisted var urlgithub: String = ""
    @Persisted var idytb: String = ""
    convenience init(name: String, language: String, tool: String, highlght: String, status: String, detail: String, url: String,urlgithub: String, idytb: String) {
        self.init()
        self.name = name
        self.language = language
        self.tool = tool
        self.highlght = highlght
        self.status = status
        self.detail = detail
        self.url = url
        self.idytb = idytb
        self.urlgithub = urlgithub
    }
}
