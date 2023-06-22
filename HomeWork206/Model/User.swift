//
//  User.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 20.06.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let post: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Andrey",
            surname: "Blinov",
            post: Post.headSpecialist.rawValue,
            photo: "AndreyBlinov",
            bio: """
            Андрей Блинов родился и вырос в городе Люберцы московской области в 1987 году. Мать будущего iOS-разработчика трудилась школьным учителем черчения и изобразительного исскуства, а отец инженером по радиосвязи. В 2002 году Андрей с родителями переехал в г. Москва где в 2004 году поступил на кафедру Автоматизированных систем управления в Московский энергетический институт (МЭИ(ТУ)) благодаря подготовке в классе с углубленным изучением математики и информатики в школе. После окончания в 2012 году 2 года трудился инженером по настройке ПО для сбора информации с приборов учета тепла и разрабатывал схемы теплоснабжения населенных пунктов. С 2013 г по сей день трудится инженером в энергоснабжающей организации государственного сектора, но хочет поменять профессию на самую интересную📲 😎
            """,
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "ООО \"АТЭС\"",
            department: .PTO
        )
    }
}

enum Department: String {
    case PTO
    case engeneering
    case economic
}

enum Post: String {
    case headSpecialist = "Head specialist"
    case boss = "Head of department"
}




