import SwiftUI

struct ContentView: View 
{
    var body: some View 
    {
        VStack
        {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .frame(width: 400, height: 220)
                .offset(y: -140)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) 
            {
                Text("Nike")
                    .font(.title)
                
                HStack
                {
                    Text("W Air More Uptempo")
                
                    Spacer()
                    
                    Text("Pink")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Nike Updatempo")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview
{
    ContentView()
}
