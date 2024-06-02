import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .padding(.all, 7)
            .overlay {
                Circle().stroke(Color.gray.opacity(0.5), lineWidth: 1) 
            }
    }
}

#Preview {
    CircleImage(image: Image("Button"))
}
