import SwiftUI

struct BarData: Identifiable {
    let id = UUID()
    let value: CGFloat
    let color: Color
    let text: String
}

struct BarView: View {
    var data: BarData
    var maxValue: CGFloat

    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 10)
                .fill(data.color)
                .frame(width: 20, height: data.value / maxValue * 60)
            Text(data.text)
                .bold()
                .font(.system(size: 20, weight: .bold, design: .default))                .foregroundColor(data.color)
                .padding(.top, 8)
        }
    }
}

#Preview {
    BarView(data: BarData(value: 12.9, color: .green, text: "12.90 KM"), maxValue: 12.9)

}

