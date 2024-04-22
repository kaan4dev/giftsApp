import SwiftUI

struct CircleImage: View 
{
    var body: some View 
    {
        Image("nikeUptempo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 7)
            .scaleEffect(0.5)
    }
}

struct ContentView_Previews: PreviewProvider 
{
    static var previews: some View {
        CircleImage()
    }
}
