import SwiftUI

struct GiftRow: View 
{
    var gift: Gift
    
    var body: some View
    {
        HStack
        {
            gift.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(gift.name)
            
            Spacer()
        }
    }
}

#Preview 
{
    GiftRow(gift: gifts[0])
}
