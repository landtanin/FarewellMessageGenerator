import Vapor
import Leaf

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index")
    }
    
    app.post { req -> String in
        do {
            let data = try req.content.decode(FarewellMsgForm.self)
            return JobFarewellMessageBuilder()
                .setName(data.name)
                .setPreviousCompanyName(data.previousCompanyName)
                .setPositiveAdjective(data.positiveAdjective)
                .setEmail(data.yourEmail)
                .setLastDay(data.yourLastDay)
                .setPhoneNumber(data.phoneNumber)
                .build()
                .email
        } catch (let error) {
            return "An error occurred \(error.localizedDescription)"
        }
    }
}

struct FarewellMsgForm: Content {
    public let positiveAdjective: String
    public let name: String
    public let yourEmail: String
    public let previousCompanyName: String
    public let yourLastDay: String
    public var phoneNumber: String
}
