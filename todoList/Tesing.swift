import SwiftUI

struct SegmentControlViewm: View {
    var body: some View {
        content
    }
    
}
extension SegmentControlViewm {
    
    @ViewBuilder
    var content: some View{
        VStack {
            TopBar
            AboutTask
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .background(Color.black.opacity(0.6))
        CustomTabBar(selectedTab: .constant(.contact))
        
        
    }
    
    // MARK: TopBar
    @ViewBuilder
    private var TopBar: some View{
        HStack{
            Spacer()
            Text("Task Details")
                .italic()
                .fontWeight(.medium)
                .font(.system(size: 20))
            Spacer()
                .frame(width: 90)
            Button(action: {
                
            }){
                Image("chatImage")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }.padding(.trailing)
    }
    
    // MARK: TopBar
    @ViewBuilder
    private var AboutTask: some View{
        VStack(alignment: .leading){
            HStack(alignment:.top){
                Rectangle()
                    .frame(width: 70, height: 70)
                    .opacity(0.2)
                    .cornerRadius(20)
                    .overlay {
                        Image("testImage")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                VStack(alignment: .leading){
                    Text("Brake Inspection and Repair")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                    Text("Task Description")
                        .foregroundStyle(.black.opacity(0.8))
                        .font(.system(size: 11))
                }
                Spacer()
                Text("In Progress")
                    .foregroundStyle(.orange)
                    .padding(10)
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                    .background(.orange.opacity(0.3))
                    .cornerRadius(12)
                
            }
            .padding()
            Divider()
                .frame(minHeight: 2)
                .overlay(Color.black.opacity(0.2))
                .padding(.leading)
                .padding(.trailing)
            ScrollView{
                VStack(alignment: .leading){
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                    DetailTaskRow(label: "Value", value: "procaolmalnas")
                    DetailTaskRow(label: "Value", value: "300")
                    Text("SwiftUI has a number of styling protocols that allow us to define common styling for views such as Button, ProgressView, Toggle, and more. They all work by allowing us to centralize any number of modifiers that get a view looking the way we want it, and provide modifiers that let us apply the full set of customizations in a single line.")
                        .foregroundStyle(.white)
                        .font(.system(size: 10))
                    DetailTaskRow(label: "Value", value: "Vale")
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    DetailTaskRow(label: "Value", value: "Vale")
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                    ScrollView(.horizontal) {
                        HStack{
                            Image("testImage")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .overlay {
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                }
                            Image("testImage")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .overlay {
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                }
                            Image("testImage")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .overlay {
                                    Rectangle()
                                        .fill(Color.black.opacity(0.5))
                                }
                            
                        }
                    }
                    Spacer()
                    Text("Task Details")
                        .fontWeight(.regular)
                        .foregroundStyle(.black.opacity(0.8))
                        .font(.system(size: 12))
                    Text("SwiftUI has a number of styling protocols that allow us to define common styling for views such as Button, ProgressView, Toggle, and more. They all work by allowing us to centralize any number of modifiers that get a view looking the way we want it, and provide modifiers that let us apply the full set of customizations in a single line.")
                        .foregroundStyle(.white)
                        .font(.system(size: 10))
                    Spacer()
                    VStack(alignment: .center){
                        Button("Mark as Complete"){
                            
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .center)
                    .padding(10)
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(12)
                    Spacer()
                    Spacer()
                    
                    
                }
                .padding(.leading)
                .padding(.trailing)
            }
            
        }// Vstack
    }
}

struct DetailTaskRow: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.caption)
                .foregroundColor(.black.opacity(0.8))
            Spacer()
            Text(value)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    SegmentControlViewm()
}
