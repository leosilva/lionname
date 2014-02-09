import lionmessage.User

class BootStrap {

    def init = { servletContext ->
		def user = new User(lionname: "leosilva", username: "Leo Silva", password: "123")
		user.save(flush: true)
    }
    def destroy = {
    }
}
