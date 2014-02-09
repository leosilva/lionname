package lionmessage

class Post {
	
	String message
	User author

    static constraints = {
		message max: '140'
    }
}
