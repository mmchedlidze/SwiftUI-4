//
//  TravelDestinationModel.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct Places: Identifiable, Hashable {

    var id = UUID()
    var image : String
    var place : String
    var country : String
    var description : String
    var transport : String
    var mustSee : String
    var hotel : String
    
    init(id: UUID = UUID(), image: String, place: String, country: String, description: String, transport: String, mustSee: String, hotel: String) {
        self.id = id
        self.image = image
        self.place = place
        self.country = country
        self.description = description
        self.transport = transport
        self.mustSee = mustSee
        self.hotel = hotel
    }
}

final class PopularDestinationViewModel: ObservableObject {
    var popularPlace: [Places] = [
        Places(image: "Yosemite Valley", place: "Yosemite", country: "United States, California", description: "Yosemite Valley, located within Yosemite National Park, is known for its iconic granite cliffs, waterfalls, and diverse ecosystems. Experience the natural beauty of Yosemite without focusing solely on the national park.", transport: "fly into Fresno Yosemite International Airport, the nearest major airport to Yosemite Valley. From there, you can rent a car for the scenic drive to the park. ", mustSee: "El Capitan: A massive granite monolith, popular among rock climbers.Yosemite Falls: The highest waterfall in North America, with breathtaking views. Half Dome: An iconic granite dome that attracts hikers and photographers alike.", hotel: "The Ahwahnee: A historic hotel with stunning architecture and views of Yosemite Falls. Tenaya Lodge at Yosemite: A resort located just outside the park, offering a luxurious retreat."),
        
        Places(image: "Amalfi", place: "Amalfi", country: "Italy, Southern Europe", description: "The Amalfi Coast is a stunning stretch of coastline along the Tyrrhenian Sea, known for its picturesque cliffside villages, colorful buildings, and panoramic views. Enjoy the Mediterranean landscape, charming beaches, and coastal hiking trails", transport: "Fly into Naples International Airport and then travel by car, bus, or boat along the scenic Amalfi Drive.", mustSee: "Positano: A cliffside village with vibrant buildings overlooking the sea. Amalfi Cathedral: Explore the historic cathedral in the heart of Amalfi. Path of the Gods: Hike this scenic trail for breathtaking views of the coastline.", hotel: "Hotel Santa Caterina: A luxurious cliffside hotel with panoramic views. Palazzo Avino: A five-star hotel in Ravello offering elegance and stunning vistas."),
        
        Places(image: "The Swiss Alps", place: "Swiss Alps", country: "Switzerland, Central Europe", description: "The Swiss Alps offer a pristine and majestic natural environment with snow-capped peaks, picturesque valleys, and charming alpine villages. Enjoy outdoor activities like skiing, hiking, and taking scenic train rides through the mountains.", transport: "Fly into major Swiss cities like Zurich or Geneva and use the efficient Swiss public transportation system.", mustSee: "Jungfraujoch: Known as the Top of Europe, accessible by a scenic train journey. Zermatt and the Matterhorn: Explore the iconic mountain village and the stunning Matterhorn peak. Lake Lucerne: Surround yourself with mountains and the crystal-clear waters of Lake Lucerne.", hotel: "Badrutt's Palace Hotel, St. Moritz: A luxurious hotel with a rich history and breathtaking mountain views. The Chedi Andermatt: A modern alpine retreat in the heart of the Swiss Alps.v"),
        
        Places(image: "Krabi", place: "Krabi", country: "Thailand, Southeast Asia", description: "Krabi, on Thailand's Andaman Coast, is renowned for its stunning limestone cliffs, clear waters, and vibrant marine life. Explore beautiful beaches, go rock climbing, and visit nearby islands for a nature-filled adventure.", transport: "Fly into Krabi International Airport and use local transportation or boats to explore the region.", mustSee: "Railay Beach: A stunning beach surrounded by towering limestone cliffs. Phi Phi Islands: Visit these famous islands for snorkeling and breathtaking landscapes. Thung Teao Forest Natural Park: Explore the park and its emerald-green pool at the base of a waterfall.", hotel: "Rayavadee Krabi: A luxury resort nestled amidst coconut groves with access to Phranang Beach. Centara Grand Beach Resort & Villas Krabi: A beachfront resort with spacious accommodations and stunning views."),
        
        Places(image: "Ha Long Bay", place: "HaLong Bay", country: "Vietnam, Southeast Asia", description: "Ha Long Bay is a UNESCO World Heritage site characterized by emerald waters and thousands of limestone karsts and islets. Explore the bay on a cruise, visit floating fishing villages, and enjoy the unique natural beauty.", transport: "Fly into Hanoi, Vietnam, and take a bus or private transfer to Ha Long Bay.", mustSee: "Sung Sot Cave: Discover the stunning stalactite formations in this expansive cave. Ti Top Island: Climb to the island's summit for panoramic views of the bay. Vung Vieng Fishing Village: Experience the daily life of a traditional fishing village.", hotel: "Paradise Luxury Cruise: Experience Ha Long Bay on a luxury cruise ship. Vinpearl Resort & Spa Ha Long: A resort offering comfort and breathtaking views of the bay.")
    ]
}

final class TopDestinationViewModel: ObservableObject {
    var topPlace: [Places] = [
        Places(image: "Kyoto", place: "Kyoto", country: " Japan, Kansai", description: "Kyoto, with its mix of traditional and modern Japan, is a city of temples, gardens, and historic tea houses. It's a cultural haven with a rich heritage and beautiful landscapes.", transport: "Arrive via Kansai International Airport and take the Shinkansen (bullet train) from Tokyo. Use Kyoto's extensive bus and subway system for local travel.", mustSee: "Fushimi Inari Shrine: Walk through thousands of vibrant torii gates up the sacred Mount Inari. Kinkaku-ji (Golden Pavilion): Admire the stunning Zen Buddhist temple covered in gold leaf. Arashiyama Bamboo Grove: Stroll through the enchanting bamboo forest.", hotel: "Hoshinoya Kyoto: A luxury resort with traditional ryokan-style accommodations. Gion Hatanaka: Located in the historic Gion district, offering a traditional Japanese experience. Hyatt Regency Kyoto: A blend of modern luxury with a touch of traditional design."),
        
        Places(image: "Chiang Mai", place: "Chiang Mai", country: "Thailand, Northern Region", description: " Chiang Mai, nestled in the foothills of northern Thailand, is a city known for its ancient temples, vibrant markets, and surrounding mountainous landscapes. Immerse yourself in Thai culture and explore the rich history of this charming city.", transport: "Fly into Chiang Mai International Airport and use tuk-tuks, taxis, or rent a scooter to get around the city.", mustSee: "Wat Phra Singh: Explore the beautiful temple known for its intricate architecture and revered Buddha statue. Doi Suthep: Visit the mountaintop temple, Wat Phra That Doi Suthep, for panoramic views of the city. Chiang Mai Old City: Wander through the historic quarter, filled with temples, shops, and cafes.", hotel: "137 Pillars House: A luxury boutique hotel with colonial-style architecture and lush gardens. Anantara Chiang Mai Resort: Riverside accommodations with modern amenities and traditional Thai design. Rachamankha Hotel: A serene retreat in the heart of the old city, featuring elegant Thai architecture."),
        
        
        Places(image: "Queenstown", place: "Queenstown", country: "New Zealand, Otago, South Island", description: "Queenstown is a picturesque town surrounded by the Southern Alps and nestled on the shores of Lake Wakatipu. It's a haven for outdoor enthusiasts, offering adventure sports, stunning landscapes, and a charming town center.", transport: "Fly into Queenstown Airport and explore the compact town on foot. Rental cars and buses are also available for excursions.", mustSee: "Milford Sound: Take a scenic cruise through the breathtaking fjord surrounded by towering cliffs. Skyline Queenstown: Enjoy panoramic views from the gondola and try the luge for a bit of fun. Glenorchy: Visit this serene lakeside town known for its stunning scenery, including scenes from The Lord of the Rings.", hotel: "Eichardt's Private Hotel: A luxury boutique hotel with lakefront views. Queenstown Park Boutique Hotel: Stylish accommodations with a focus on sustainability. Novotel Queenstown Lakeside: A centrally located hotel with modern amenities and lake views."),
        
        Places(image: "Hangzhou", place: "Hangzhou", country: "China, Zhejiang Provi", description: "Hangzhou, often referred to as Heaven on Earth, is a city of serene landscapes, historic pagodas, and the iconic West Lake. Known for its tea plantations and traditional architecture, Hangzhou offers a perfect blend of natural beauty and cultural richness.", transport: " Fly into Hangzhou Xiaoshan International Airport and use local buses, taxis, or the metro to navigate the city.", mustSee: "West Lake: Take a boat ride on the picturesque West Lake and explore its scenic surroundings. Lingyin Temple: Visit one of the oldest and most significant Buddhist temples in China. Longjing Tea Plantations: Experience tea culture and stroll through the lush green tea fields.", hotel: "Amanfayun: A luxury resort set in a picturesque valley with traditional Chinese architecture. Four Seasons Hotel Hangzhou at West Lake: Offers luxurious accommodations with views of the West Lake. Banyan Tree Hangzhou: A resort surrounded by lush greenery and pagoda-style villas."),
        Places(image: "Santorini", place: "Santorini", country: "Greece, Southern Aegean", description: "Santorini is a breathtaking island known for its iconic white-washed buildings, crystal-clear waters, and stunning sunsets. Explore charming villages, ancient ruins, and indulge in delicious Greek cuisine.", transport: "Fly into Santorini International Airport or take a ferry from Athens. Once on the island, rent a car, use local buses, or even explore on foot for a more intimate experience.", mustSee: "Oia Sunset: Witness the famous sunset in Oia, considered one of the most beautiful in the world. Akrotiri Archaeological Site: Explore the well-preserved ruins of an ancient Minoan city.Red Beach: Relax on the unique red sands and swim in the clear waters.", hotel: "Canaves Oia Hotel: A luxury hotel with stunning views and beautiful accommodations.Mystique, a Luxury Collection Hotel: Cliffside suites with a blend of traditional and modern design.Katikies Hotel: A boutique hotel offering cave-style rooms and personalized service.")
    ]
}

let test = Places(image: "Yosemite Valley", place: "Yosemite", country: "United States, California", description: "Yosemite Valley, located within Yosemite National Park, is known for its iconic granite cliffs, waterfalls, and diverse ecosystems. Experience the natural beauty of Yosemite without focusing solely on the national park.", transport: "fly into Fresno Yosemite International Airport, the nearest major airport to Yosemite Valley. From there, you can rent a car for the scenic drive to the park. ", mustSee: "El Capitan: A massive granite monolith, popular among rock climbers.Yosemite Falls: The highest waterfall in North America, with breathtaking views. Half Dome: An iconic granite dome that attracts hikers and photographers alike.", hotel: "The Ahwahnee: A historic hotel with stunning architecture and views of Yosemite Falls. Tenaya Lodge at Yosemite: A resort located just outside the park, offering a luxurious retreat.")
