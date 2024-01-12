//
//  User.swift
//  My_HW_Person_2.07
//
//  Created by Dmitry Parhomenko on 11.01.2024.
//

import Foundation

struct User {
    let user: String
    let passwort: String
    
    let person: Person
    
    static func getUser() -> User {
        User(
            user: "Mit",
            passwort: "qwerty",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let surname: String
    let photo: String
    let bio: String
    let placeOfWork: Job
    
    var fullName: String {
        "\(firstName) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            firstName: "Дмитрий",
            lastName: "Пархоменко",
            surname: "Олегович",
            photo: "mit",
            bio:"""
            Привет! Немного о себе:
            Родился 27 августа 1975 г. в г.Миасс, Челябинской области.
            В 1997 г. закончил Южно-Уральский государственный университет,
            Энергетический факультет. Сразу после института работаю по специальности,
            в эненергетике, в компании Россети - Урал, Главным инженером
            производственного подразделения Западные Электрические Сети (ПО ЗЭС).
            сети.
            Женат, трое детей, дружная и крепкая семья !
            Увлечения: Swift, аудиокниги, загородный дом и баня )
            """,
            placeOfWork: Job.getJob()
        )
    }
}

struct Job {
    let company: String
    let subdivision: String
    let jobTitle: String
    
    static func getJob() -> Job {
        Job(
            company: "Россети-Урал",
            subdivision: "ПО ЗЭС",
            jobTitle: "Главный инженер"
        )
    }
}
