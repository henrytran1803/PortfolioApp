//
//  ViewModels.swift
//  PortfolioApp
//
//  Created by Tran Viet Anh on 21/04/2024.
//

import Foundation
import RealmSwift
import Foundation
import RealmSwift

class ProjectsViewModel: ObservableObject {
    @Published var projects: [Project] = []
    
    init() {
        let config = Realm.Configuration(
            schemaVersion: 2, // Increment schema version
            migrationBlock: { migration, oldSchemaVersion in
                if oldSchemaVersion < 2 {
                    // Define the migration block for adding 'urlgithub' property
                    migration.enumerateObjects(ofType: Project.className()) { oldObject, newObject in
                        newObject?["urlgithub"] = ""
                    }
                }
            }
        )
        Realm.Configuration.defaultConfiguration = config
    }

    func fetchData(completion: @escaping (Bool) -> ()) {
        do {
            let realm = try Realm()
            let results = realm.objects(Project.self)
            projects = Array(results)
            print(projects)
            completion(true)
        } catch {
            completion(false)
        }
    }

    func addProject(value: Project) {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(value)
            }
        } catch {
            print("Failed to add project: \(error.localizedDescription)")
        }
    }

    func deleteAllProjects() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.delete(realm.objects(Project.self))
            }
            print("Deleted all projects successfully")
        } catch {
            print("Failed to delete projects: \(error.localizedDescription)")
        }
    }
    
    func addSampleData() {
        let sampleProjects = [
            Project(name: "App order food", language: "Swift", tool: "Xcode", highlght: "E-commerce, payment with coinbase", status: "Ongoing", detail: "This is a food selling app project with complete functionalities including purchasing, checkout, payment, as well as order tracking.", url: "https://github.com/henrytran1803/AppOrderFood/blob/main/simulator_screenshot_6E33C0CF-39EA-4672-81B9-7196C6364CFC.png?raw=true", urlgithub: "https://github.com/henrytran1803/AppOrderFood", idytb: "none"),
            Project(name: "IOS App Schechule", language: "Swift", tool: "Xcode", highlght: "", status: "Completed", detail: "Dây là project học theo plaground của apple", url: "", urlgithub: "https://github.com/henrytran1803/ScheduleApp", idytb: "odShAFDBZP8"),
            Project(name: "IOS App firebase chat", language: "Swift", tool: "Xcode", highlght: "", status: "Completed", detail: "Dây là project lập trình với realtime database", url: "", urlgithub: "https://github.com/henrytran1803/ChatFireBaseApp", idytb: "odShAFDBZP8"),
            Project(name: "IOS App Admin managerment", language: "Swift", tool: "Xcode", highlght: "", status: "Completed", detail: "Bài giữa kỳ môn lập trình ứng dụng di động", url: "https://raw.githubusercontent.com/henrytran1803/AdminBaoCaoApp/main/IMG_0848.PNG", urlgithub: "https://github.com/henrytran1803/AdminBaoCaoApp", idytb: "7wJozToiMkc&ab_channel=INFINITY"),
            Project(name: "Web gym suport", language: "Python", tool: "PyCharm", highlght: "This is an integrated AI-powered food selling app designed to predict Body Fat Percentage (BFP) and offer exercise suggestions.", status: "Completed", detail: "This is a project for the Intelligent System Development course written in Python, utilizing the Django framework. It includes training two AI models to predict Body Fat Percentage (BFP) and consequently generate reasonable exercise recommendations.", url: "", urlgithub: "https://github.com/henrytran1803/WebFitness-Django-HTTM", idytb: "odShAFDBZP8"),
            Project(name: "Web face unlock", language: "Python", tool: "PyCharm", highlght: "This is a project for the Intelligent System Development course, written in Python using the Django framework. It incorporates AI face recognition functionality.", status: "Completed", detail: "This is a project for the Image Processing course, which also integrates a face recognition model for opening and closing a cabinet.", url: "", urlgithub: "https://github.com/henrytran1803/webFaceUnlock", idytb: "odShAFDBZP8"),
            Project(name: "App desktop", language: "Java", tool: "Netbean", highlght: "Quản lyý cơ sở vậy chất của trường học.", status: "Completed", detail: "Đồ án môn nhập môn công nghệ phần mềm do cô Nguyễn Thị Bích Nguyên giảng dạy.", url: "", urlgithub: "https://github.com/henrytran1803/CNPM-QLTBHVCS", idytb: "odShAFDBZP8"),
            Project(name: "App desktop THITN", language: "C#", tool: "Visual studio", highlght: "Thi trác nghiệm phân tán DB.", status: "Completed", detail: "Đồ án môn csdl phân tán do thầy Lưu Nguyễn Kỳ Thư, PTITHCM giảng dạy.", url: "", urlgithub: "https://github.com/henrytran1803/CSDLPT-THITN", idytb: "odShAFDBZP8"),
        ]

        for project in sampleProjects {
            addProject(value: project)
        }
    }
}
