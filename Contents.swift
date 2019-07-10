import UIKit


//Intentions : I want to create a facebook profile class that takes in different properties each time a user creates a facebook profile.
class FacebookProfile {
    //Section 1. Class Attributes - every class is going to have these
    //These are going to be out initializers
    //These will change each time we decide to create a NEW Facebook
    var profileName : String
    var profileAge : Int
    var profileBio : String
    var profileSchool : String
    var profileFriendList : [String]
    var profileBirthday : String
    var profileRelationshipStatus : String
    var profileOccupation : String
    var friendRequest : String
    var currentFriends : Int
    var storeBirthday: [String : String]
    
    //Section 1.5 Class Constants - The relationships statuses here will never change
    //The Let keyword keeps it from changing
    
    let relationshipStatus1 = "In a relationship"// represent this by number 1
    let relationshipStatus2 = "Single" //represented by number 2
    let relationshipStatus3 = "Its Complicated" //represented by number 3
    let relationshipStatus4 = "Married"//Represented by number 4
    
    //create and initializer that will take in each user's information
    
    //We want to make a string that allows for the friend request to show
    
    init () {
        profileName = "New User"
        profileAge = 0 //Maybe this is a design flae that we will need to fix later
        profileBio = "This is a profile"
        profileSchool = ""
        profileFriendList = [String]()
        //we will need to code a special function for our friends list
        profileBirthday = ""
        profileRelationshipStatus = relationshipStatus3 //another flaw that it will always default to its complicated
        //for relationships status - we will need to code a function for this to work
        profileOccupation = ""
        friendRequest = "0"
        currentFriends = 0
    }

    
    //Section 2. Functions that will support our Facebook Profile
    
    
    //Creat a function that sets a profile's name by taking in an argument
    
    

    func setProfileName(userName: String) {
        profileName = userName
    }

    
    // We create objects within functions because it allows us to transfer information between objects
    func profileFriendList(requester: FacebookProfile, accepter: FacebookProfile){
        //I want to access their profile names here
        var newFriend = requester.profileName
        var newFriend2 = accepter.profileName
        
        
        //I want to add their profile names to my account
        accepter.profileFriendList.append(newFriend)
        requester.profileFriendList.append(newFriend2)
        
        
    }
    
    //Driver navigator with partner
    //come up with a function that adds another users birthday to your account - say you have a group that stores birthdaays (for celebrations) and you want to add that information in
    
    func setProfileBirthday(birthday: String){
        profileBirthday = birthday
    }
    
    func checkEverything() {
        print(profileName)
        print(profileFriendList)
    }
}

//We are creating an object from our Facebook profile class here!
var hallesFacebook = FacebookProfile()
var kylasFacebook = FacebookProfile()

//If I want to modify Halles Facebook Profile, I would call upon the object I created here:
//When you wan to use a function in a class, you use a periond behing the object name and you write the function name. For example, I want to set a profile name, so I use .setProfileName (calls upon the func setProfileName)

hallesFacebook.setProfileName(userName: "Halles Facebook")
hallesFacebook.checkEverything()

kylasFacebook.setProfileName(userName: "Kyla's Facebook")

kylasFacebook.profileFriendList(requester: kylasFacebook, accepter: hallesFacebook)

kylasFacebook.profileFriendList(requester: kylasFacebook, accepter: hallesFacebook)
kylasFacebook.checkEverything()

kylasFacebook.checkEverything()
