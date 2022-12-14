//
//  Util.swift
//  Mobile Makers Test
//
//  Created by Aiden Seibel on 12/7/21.
//

import Foundation
import SwiftUI

//MARK: UTIL
class Util {
    public static func formatStringLength(title: String, length: Int) -> String {  // Forces an ellipses if string is too long
        if(title.count > length) {
            let index = title.index(title.startIndex, offsetBy: length + 1)
            let mySubstring = title.prefix(upTo: index)
            return mySubstring + "..."
        }
        
        return title
    }
    
    public static func getCategoryListings(category: String) -> [listing] {
        var listingsInCategory: [listing] = []
        
        for listing in exampleListings {
            if(listing.category == category){
                listingsInCategory.append(listing)
            }
        }
        
        return listingsInCategory
    }
    
    public static func getOtherItems(listingToBeRemoved: listing) -> [listing] {
        let listings = getCategoryListings(category: listingToBeRemoved.category!)
        var newListings: [listing] = []
        
        for listing in listings {
            if(!(listing.id == listingToBeRemoved.id)){
                newListings.append(listing)
            }
        }
        
        return newListings
    }
    
    public static func getOwnerListings(owner: account) -> [listing] {
        var ownerListings: [listing] = []
        
        for listing in exampleListings {
            if(listing.owner.id == owner.id){
                ownerListings.append(listing)
            }
        }
        
        return ownerListings
    }
    
    public static func checkString(string: String) -> Bool{
        if string == "" || string.count < 3{
            return false
        }
        for badword in badwords {
            if string.lowercased().contains(badword){
                return false
            }
        }
        
        return true
    }
    
    public static func checkDollarPrice(price: String) -> Bool{
        if Int(price) != nil || price.count < 4{
            return true
        }
        return false
    }
    
    public static func checkCentsPrice(price: String) -> Bool{
        if Int(price) != nil || price.count == 2{
            return true
        }
        return false
    }

    
}

//MARK: SEARCH
class Search{
    public static func getSearchResults(search: String) -> [listing] {
        // Returns an array of results based on search; sees if name, address, and description contains search word, case insensitive
        // Searches from example data in Database.swift
        
        var searchResults: [listing] = []
        var count = 0
        let maximumSearchResultCount = 10
        
        for listing in exampleListings {
            if((listing.name.range(of: search, options: .caseInsensitive)) != nil){
                searchResults.append(listing)
                count += 1
            }
            else if ((listing.description.range(of: search, options: .caseInsensitive)) != nil) {
                searchResults.append(listing)
                count += 1
            }
            else if ((listing.address.range(of: search, options: .caseInsensitive)) != nil) {
                searchResults.append(listing)
                count += 1
            }
            
            if(count == maximumSearchResultCount){
                return searchResults
            }
        }
        
        return searchResults
    }
}

//from https://github.com/MauriceButler/badwords
let badwords = ["4r5e", "5h1t", "5hit", "a55", "anal", "anus", "ar5e", "arrse", "arse", "ass", "ass-fucker", "asses", "assfucker", "assfukka", "asshole", "assholes", "asswhole", "a_s_s", "b!tch", "b00bs", "b17ch", "b1tch", "ballbag", "balls", "ballsack", "bastard", "beastial", "beastiality", "bellend", "bestial", "bestiality", "bi+ch", "biatch", "bitch", "bitcher", "bitchers", "bitches", "bitchin", "bitching", "bloody", "blow job", "blowjob", "blowjobs", "boiolas", "bollock", "bollok", "boner", "boob", "boobs", "booobs", "boooobs", "booooobs", "booooooobs", "breasts", "buceta", "bugger", "bum", "bunny fucker", "butt", "butthole", "buttmuch", "buttplug", "c0ck", "c0cksucker", "carpet muncher", "cawk", "chink", "cipa", "cl1t", "clit", "clitoris", "clits", "cnut", "cock", "cock-sucker", "cockface", "cockhead", "cockmunch", "cockmuncher", "cocks", "cocksuck", "cocksucked", "cocksucker", "cocksucking", "cocksucks", "cocksuka", "cocksukka", "cok", "cokmuncher", "coksucka", "coon", "cox", "crap", "cum", "cummer", "cumming", "cums", "cumshot", "cunilingus", "cunillingus", "cunnilingus", "cunt", "cuntlick", "cuntlicker", "cuntlicking", "cunts", "cyalis", "cyberfuc", "cyberfuck", "cyberfucked", "cyberfucker", "cyberfuckers", "cyberfucking", "d1ck", "damn", "dick", "dickhead", "dildo", "dildos", "dink", "dinks", "dirsa", "dlck", "dog-fucker", "doggin", "dogging", "donkeyribber", "doosh", "duche", "dyke", "ejaculate", "ejaculated", "ejaculates", "ejaculating", "ejaculatings", "ejaculation", "ejakulate", "f u c k", "f u c k e r", "f4nny", "fag", "fagging", "faggitt", "faggot", "faggs", "fagot", "fagots", "fags", "fanny", "fannyflaps", "fannyfucker", "fanyy", "fatass", "fcuk", "fcuker", "fcuking", "feck", "fecker", "felching", "fellate", "fellatio", "fingerfuck", "fingerfucked", "fingerfucker", "fingerfuckers", "fingerfucking", "fingerfucks", "fistfuck", "fistfucked", "fistfucker", "fistfuckers", "fistfucking", "fistfuckings", "fistfucks", "flange", "fook", "fooker", "fuck", "fucka", "fucked", "fucker", "fuckers", "fuckhead", "fuckheads", "fuckin", "fucking", "fuckings", "fuckingshitmotherfucker", "fuckme", "fucks", "fuckwhit", "fuckwit", "fudge packer", "fudgepacker", "fuk", "fuker", "fukker", "fukkin", "fuks", "fukwhit", "fukwit", "fux", "fux0r", "f_u_c_k", "gangbang", "gangbanged", "gangbangs", "gaylord", "gaysex", "goatse", "God", "god-dam", "god-damned", "goddamn", "goddamned", "hardcoresex", "hell", "heshe", "hoar", "hoare", "hoer", "homo", "hore", "horniest", "horny", "hotsex", "jack-off", "jackoff", "jap", "jerk-off", "jism", "jiz", "jizm", "jizz", "kawk", "knob", "knobead", "knobed", "knobend", "knobhead", "knobjocky", "knobjokey", "kock", "kondum", "kondums", "kum", "kummer", "kumming", "kums", "kunilingus", "l3i+ch", "l3itch", "labia", "lust", "lusting", "m0f0", "m0fo", "m45terbate", "ma5terb8", "ma5terbate", "masochist", "master-bate", "masterb8", "masterbat*", "masterbat3", "masterbate", "masterbation", "masterbations", "masturbate", "mo-fo", "mof0", "mofo", "mothafuck", "mothafucka", "mothafuckas", "mothafuckaz", "mothafucked", "mothafucker", "mothafuckers", "mothafuckin", "mothafucking", "mothafuckings", "mothafucks", "mother fucker", "motherfuck", "motherfucked", "motherfucker", "motherfuckers", "motherfuckin", "motherfucking", "motherfuckings", "motherfuckka", "motherfucks", "muff", "mutha", "muthafecker", "muthafuckker", "muther", "mutherfucker", "n1gga", "n1gger", "nazi", "nigg3r", "nigg4h", "nigga", "niggah", "niggas", "niggaz", "nigger", "niggers", "nob", "nob jokey", "nobhead", "nobjocky", "nobjokey", "numbnuts", "nutsack", "orgasim", "orgasims", "orgasm", "orgasms", "p0rn", "pawn", "pecker", "penis", "penisfucker", "phonesex", "phuck", "phuk", "phuked", "phuking", "phukked", "phukking", "phuks", "phuq", "pigfucker", "pimpis", "piss", "pissed", "pisser", "pissers", "pisses", "pissflaps", "pissin", "pissing", "pissoff", "poop", "porn", "porno", "pornography", "pornos", "prick", "pricks", "pron", "pube", "pusse", "pussi", "pussies", "pussy", "pussys", "rectum", "retard", "rimjaw", "rimming", "s hit", "s.o.b.", "sadist", "schlong", "screwing", "scroat", "scrote", "scrotum", "semen", "sex", "sh!+", "sh!t", "sh1t", "shag", "shagger", "shaggin", "shagging", "shemale", "shi+", "shit", "shitdick", "shite", "shited", "shitey", "shitfuck", "shitfull", "shithead", "shiting", "shitings", "shits", "shitted", "shitter", "shitters", "shitting", "shittings", "shitty", "skank", "slut", "sluts", "smegma", "smut", "snatch", "son-of-a-bitch", "spac", "spunk", "s_h_i_t", "t1tt1e5", "t1tties", "teets", "teez", "testical", "testicle", "tit", "titfuck", "tits", "titt", "tittie5", "tittiefucker", "titties", "tittyfuck", "tittywank", "titwank", "tosser", "turd", "tw4t", "twat", "twathead", "twatty", "twunt", "twunter", "v14gra", "v1gra", "vagina", "viagra", "vulva", "w00se", "wang", "wank", "wanker", "wanky", "whoar", "whore", "willies", "willy", "xrated", "xxx"];
