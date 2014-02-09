package lionmessage

class PostController {

    def write() {
		render view: 'write', model: [post: new Post()]
	}
}
