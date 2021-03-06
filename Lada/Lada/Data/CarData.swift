//
//  CarData.swift
//  Lada
//
//  Created by Maksim Maiorov on 09.02.2022.
//

import SwiftUI

// MARK: - CARS DATA
let carsData: [Car] = [
    Car(title: "ВАЗ-2101", headline: "ВАЗ-2101 - самая первая модель, получившая народное название «копейка»", image: "ВАЗ-2101 (1970—1988)", gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")], description: "ВАЗ-2101 «Жигули» — советский заднеприводный легковой автомобиль малого класса с кузовом типа седан. Первая модель, выпущенная на Волжском автомобильном заводе. На базе ВАЗ-2101 было создано так называемое «классическое» семейство автомобилей ВАЗ, которое находилось на конвейере с 1970 до 17 сентября 2012 года.", features: ["2101", "Mеханическая 4-ступенчатая", "1,3 л", "69 л.с"]),
    
    Car(title: "ВАЗ-2102",
        headline: "ВАЗ-2102 (1971—1986) — версия модели 2101 с кузовом универсал",
        image: "ВАЗ-2102 (1971—1986)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "(ВАЗ-2102 «Жигули» — советский заднеприводный автомобиль с кузовом типа универсал. Серийно выпускался на Волжском автомобильном заводе с 21 сентября 1971 по 1986 год.)",
        features: ["2102", "Mеханическая 4-ступенчатая", "1,3 л", "69 л.с"]),
    
    Car(title: "ВАЗ-2103",
        headline: "ВАЗ-2103 (1972—1984) — модель с улучшенной комплектацией, отличавшаяся сдвоенными фарами и обилием хрома в отделке",
        image: "ВАЗ-2103 (1972—1984)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "ВАЗ-2103 «Жигули» — советский заднеприводный автомобиль II группы малого класса с кузовом седан. Был разработан совместно с итальянской фирмой Fiat на базе модели Fiat 124 и серийно выпускался на Волжском автомобильном заводе с 1972 по 1984 год.",
        features: ["2103", "Mеханическая 4-ступенчатая", "1,3 л", "69 л.с"]),
    
    Car(title: "ВАЗ-2104",
        headline: "ВАЗ-2104 (1984—2012) — универсал на базе 2105, известна на экспортных рынках как Kalinka и Signet",
        image: "ВАЗ-2104 (1984—2012)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "Серийный выпуск автомобиля ВАЗ-2104 («четвёрки») был начат на Волжском автомобильном заводе во второй половине 1984 года. Параллельно с новой моделью выпускали аналогичный по классу автомобиль ВАЗ-2102 («двойка»), который к апрелю 1985 года был полностью вытеснен с конвейера. От автомобиля - «донора» «четвёрке» достался ряд оригинальных деталей, касающихся задней части авто.",
        features: ["2104", "Mеханическая 4-ступенчатая", "1,3 л", "69 л.с"]),
    
    Car(title: "ВАЗ-2105",
        headline: "ВАЗ-2105 (1980—2010) — первая модель с прямоугольными фарами, известна на экспортных рынках как Riva, Nova, Laika и Clasico",
        image: "ВАЗ-2105 (1980—2010)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "ВАЗ-2105 «Жигули» (LADA 2105) — советский и российский заднеприводный автомобиль III группы малого класса с кузовом типа седан. Был разработан и серийно выпускался на Волжском автомобильном заводе. Первые опытно-промышленные партии были собраны в октябре 1979, полномасштабное производство развёрнуто в январе 1980 года и длилось до 30 декабря 2010 года. За всё время производства АвтоВАЗ выпустил 2 091 000 автомобилей ВАЗ-2105 всех модификаций с кузовом седан.",
        features: ["2105", "Mеханическая 5-ступенчатая", "1,57 л", "82 л.с"]),
    
    Car(title: "ВАЗ-2106",
        headline: "ВАЗ-2106 (1976—2006) — усовершенствованная версия модели 2103, с меньшим числом хромированных деталей в отделке",
        image: "ВАЗ-2106 (1976—2006)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "ВАЗ-2106 «Жигули» - советский и российский заднеприводный автомобиль III группы малого класса с кузовом типа седан выпускался с 1976 по 2006 год. В 1998 году производство было частично перенесено на предприятие «Рослада» в Сызрани (последний из выпущенных в Тольятти ВАЗ-2106 был собран 28 декабря 2001), в 2001 году — на Анто-Рус в Херсоне (Украина), а в 2002 году — на завод «ИжАвто» в Ижевске, где и продолжалось вплоть до снятия модели с конвейера до 2006 года. Один из самых массовых и популярных автомобилей в истории СССР, России и СНГ — всего произведено и собрано на разных заводах свыше 4,3 млн штук.",
        features: ["2106", "Mеханическая 5-ступенчатая", "1,6 л", "72 л.с"]),
    
    Car(title: "ВАЗ-2107",
        headline: "ВАЗ-2107 (1982—2014) — люксовая версия «пятёрки», известная на экспортных рынках как Riva, Nova и Signet",
        image: "ВАЗ-2107 (1982—2014)",
        gradientColors: [Color ("ColorOneLight"), Color("ColorOneDark")],
        description: "ВАЗ-2107 «Жигули» (LADA 2107) — советский и российский заднеприводный автомобиль II группы малого класса с кузовом типа седан, одна из последних моделей «классики», выпускавшаяся на ОАО «Волжский автомобильный завод/АвтоВАЗ» с марта 1982 года по 17 апреля 2012 года.",
        features: ["2107", "Mеханическая 5-ступенчатая", "1,6 л", "72 л.с"])
]
