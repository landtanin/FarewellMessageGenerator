import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    // MARK: - Register Leaf
    app.views.use(.leaf)
    app.leaf.cache.isEnabled = false
    
    // register routes
    try routes(app)
}
