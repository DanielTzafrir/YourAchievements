import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {

            Text("Your achievements")
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Divider()
        }
        ScrollView {
            VStack {
                HStack {
                Text("May 24 - May 30")
                    .font(.title2)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button {
                    
                } label: {
                    CircleImage(image: Image("Button"))
                }.padding(.horizontal, -40)
                
                } .padding([.horizontal, .bottom])
            
                VStack {
                    VStack {
                        CircleImage2(image: Image("Medal"))
                            .padding(.bottom)
                        
                        
                        Text("You are better than 90%")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("of the app users")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    .frame(maxWidth: .infinity, minHeight: 200 ,maxHeight: 300, alignment: .center)
                    .padding(.bottom)
                    
                    
                    
                    HStack(alignment: .center) {
                        VStack(alignment: .center) {
                            Text("Steps")
                                .foregroundColor(Color.white.opacity(0.7))
                                .padding(.horizontal, 20.0)
                            Text("18,672")
                                .foregroundColor(.green)
                                .padding(.vertical, 10.0)
                        }
                        
                        .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        VStack(alignment: .center){
                            Text("Calories")
                                .foregroundColor(Color.white.opacity(0.7))
                                .padding(.horizontal, 20)
                            Text("740")
                                .foregroundColor(.green)
                                .padding(.vertical, 10.0)
                            
                        }
                        .padding()
                        
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Text("KM")
                                .foregroundColor(Color.white.opacity(0.7))
                                .padding(.horizontal, 20)
                            Text("12.90")
                                .foregroundColor(.green)
                                .padding(.vertical, 10.0)
                        }
                        .padding()
                    }
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0)
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding([.leading, .bottom, .trailing], -15)
                    
                }
                .padding()
                //.frame(width: 400.0, height: 300.0)
                .background(Color.black.opacity(0.93))
                .cornerRadius(20)
                
                Spacer()
                    .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                
                HStack {
                    VStack() {
                        VStack {
                            CircleImage2(image: Image("Run"))
                                .padding(.top, 30)
                            Text("This week you did 3 km more than last week")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .lineLimit(2)
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 300.0, height: 100.0)
                        }
                        .frame(maxWidth: .infinity, minHeight: 200 ,maxHeight: 300, alignment: .center)
                        HStack(spacing: 50) {
                            BarView(data: BarData(value: 9.4, color: Color.white.opacity(0.7), text: "9.40 KM"), maxValue: 12.9)
                            
                            BarView(data: BarData(value: 12.9, color: .green, text: "12.90 KM"), maxValue: 12.9)
                        }
                        .padding(.bottom)
                        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 300,maxHeight: .infinity, alignment: .center)
                .padding()
                .background(Color.black.opacity(0.93))
                .cornerRadius(20)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
