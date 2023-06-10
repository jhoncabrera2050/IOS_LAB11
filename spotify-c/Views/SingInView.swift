
import SwiftUI
struct SingInView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var signInViewModel : SignInViewModel = SignInViewModel()
    var body: some View {
        ZStack {
            Color("Dark")
                .ignoresSafeArea()
            VStack {
                Image("spotify")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 5)
                TextView(text: "Millions of sogns")
                TextView(text: "Free on Spotify")
                
                VStack(spacing: 20) {
                    TextFieldView(value: $email, placeHolder: "Email", keyboardType: .emailAddress)
                    TextFieldView(value: $password, placeHolder: "Password", isSecure: true)
                    Button{
                        signInViewModel.signUp(email: email, password: password)
                    }label: {
                        Text("Login")
                            .foregroundColor(Color("Dark"))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("primary"))
                            .cornerRadius(30)
                    }
                }.padding(.top)
            }.padding()
        }
    }
}

struct SingInView_Previews: PreviewProvider {
    static var previews: some View {
        SingInView()
    }
}
