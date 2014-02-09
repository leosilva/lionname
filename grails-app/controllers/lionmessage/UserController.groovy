package lionmessage

import grails.converters.JSON
import groovy.json.JsonBuilder

class UserController {
	
	def preLogin() {
		render view: '/login', model: [user: new User()]
	}
	
	def login() {
		def json = JSON.parse(params.json)
		def user = User.findByLionname(json.lionname)
		if (user) {
			if (user.password == json.password) {
				session.user = user
				render status: 200, text: g.message(code: 'login.success.message')
			} else {
				render status: 500, text: g.message(code: 'wrong.password.message') 
			}
		} else {
			render status: 500, text: g.message(code: 'user.not.found.message')
		}
	}
	
	def logout() {
		session.user = null
		redirect uri: '/'
	}
	
	def editProfile() {
		def user = User.findByLionname(session?.user?.lionname)
		render template: 'editProfile', model: [user: user]
	}
	
	def edit() {
		def json = JSON.parse(params.json)
		def user = User.get(json.id)
        user.properties = json

        if (user.save(flush: true)) {
        	session.user.properties = json
			def jsonBuilder = new JsonBuilder()
			def returnJson = jsonBuilder {
				message g.message(code: 'default.registry.updated.success')
				headerPage g.render(template: '/shared/header')
			}
            render returnJson as JSON
        } else {
        	render status: 500, text: g.message(code: 'default.registry.updated.error')
        }

	}
	
}
