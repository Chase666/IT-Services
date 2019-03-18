# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create(name: 'HTML Academy', foundation_year: 2013,description: "Курсы для каждого, кто хочет окунуться в мир вёрстки и программирования. Интерактивные задания помогут освоить веб-технологии и создать сайт, а интенсивные курсы подготовят к старту карьеры в IT.",website:"htmlacademy.ru")
Company.create(name: 'Юниум', foundation_year: 1991,description: "Юниум — федеральная сеть образовательных центров для школьников — была основана в 1991 году. На данный момент работают 29 образовательных центров в Москве, Санкт-Петербурге, Екатеринбурге, Нижнем Новгороде, Новосибирске и Челябинске. Наши образовательные центры находятся по всему городу недалеко от метро. Мы занимаемся развитием и обучением школьников по 98 курсам и 17 предметам.",phone: 74992881752,organization_name: "ООО «Юниум»",website: "unium.ru")
Course.create(name: 'Основы HTML', info: 'Изучаем разметку: от простейших текстовых тегов и типовой структуры страницы до сложных форм, видео и аудио.', total_lessons: 8, price: 0)
Course.create(name: 'Основы CSS', info: 'Знакомимся с синтаксисом CSS, тренируемся использовать селекторы, каскадность и наследование.', total_lessons: 5, price: 0)
Course.create(name: 'Курсы по созданию компьютерных игр', info: 'Курсы построены на освоении движка Unity, на основе которого были созданы многие популярные компьютерные игры.Программа курса создана с учетом возраста учеников, поэтому занятия начинаются с элементарных задач, которые со временем усложняются. Наши преподаватели помогают учащимся освоить работу во многих программах, разрабатывать продукты под Android, Windows и иные ОС, работать с 3D-графикой.', total_lessons: 36, price: 34000)
Subject.create(name: 'Веб-дизайн', description: 'Научитесь использовать и интегрировать HTML.CSS,JS в своих веб-приложениях.')
Subject.create(name: 'Разработка игр', description: 'Научитесь создавать компьютерные игры и анимации.')