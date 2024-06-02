import SwiftUI

struct CircleImage2: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 67, height: 67)
            .clipShape(Circle())
            .background(Circle().fill(Color.gray.opacity(0.2)))
            
    }
}

#Preview {
    CircleImage2(image: Image("Medal"))
}
