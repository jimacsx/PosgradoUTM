import controlposgrado.*

class BootStrap {
	def springSecurityService
    def init = { servletContext ->
//		def adminRole = SecRole.findOrSaveWhere(authority:'ROLE_ADMIN')
//		def user = Usuario.findOrSaveWhere(username: 'daniel@gmail.com', password: 'password')
//		
//		if(!user.authorities.contains(adminRole)){
//			println "creando al Admin"
//			SecUserSecRole.create(user,adminRole, true)
//		} else{
//			println "Ya se creo?"
//			println user
//		}
		def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush:true)
		def userRole = new SecRole(authority: 'ROLE_USER').save(flush:true)
		
		def testUser = new Usuario(username: 'admin', password: 'admin')
		def userUser = new Usuario(username: '2009020172', password: 'max')
		testUser.save(flush:true)
		userUser.save(flush:true)
		
		SecUserSecRole.create testUser, adminRole, true
		SecUserSecRole.create userUser, userRole, true
		assert Usuario.count() == 2
		assert SecRole.count() == 2
		assert SecUserSecRole.count() == 2
    }
    def destroy = {
    }
}