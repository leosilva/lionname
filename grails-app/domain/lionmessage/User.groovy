package lionmessage

class User {
	
	String lionname
	String username
	String password
	
	static hasMany = [posts: Post]

    static constraints = {
		lionname nullable: false, blank: false, unique: true
		username nullable: false, blank: false
		password nullable: false, blank: false, password: true
    }

}
