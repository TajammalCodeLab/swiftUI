import SwiftUI

struct SegmentControlViewm: View {
    
    let items2 = Array(1...4).map {
        ("front_ID\($0)", "Information \($0)")
    }
    let details: MaintenanceDetails
    
    var body: some View {
        
            LazyVStack(spacing: 10) {
                ForEach(items2, id: \.0) { item in
                    HStack(spacing: 10) {
                        Image("testImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 87, height: 110)
                            .cornerRadius(10)
                        
                        
                        VStack(alignment: .leading){
                            Text("Oil Change")
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .foregroundStyle(.white)
                            
                            DetailRow(label: "Make:", value: details.make)
                            
                            // MARK: line
                            HStack(spacing:2){
                                ForEach(0..<35) { index in
                                    Rectangle()
                                        .frame(width: 5, height: 2)
                                        .opacity(0.6)
                                        .foregroundStyle(.white)
                                }
                            }
                            
                            
                            // MARK: details
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    DetailRow(label: "Make:", value: details.make)
                                    Spacer()
                                    DetailRow(label: "Ro#:", value: details.roNumber)
                                }
                                HStack {
                                    DetailRow(label: "VIN#:", value: details.vin)
                                    Spacer()
                                    DetailRow(label: "Warning Lights:", value: details.warningLights)
                                }
                                HStack {
                                    DetailRow(label: "Insurance:", value: details.insurance)
                                    Spacer()
                                    DetailRow(label: "Malfunction:", value: details.malfunction)
                                }
                            }
                            
                            
                        }
                    } // hstak
                    .frame(width: 345,height: 118)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                }// for each
            } // lazyvstack
        
    }
    
}
struct DetailRow: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
            Text(value)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}
struct MaintenanceDetails {
    let make: String
    let roNumber: String
    let vin: String
    let warningLights: String
    let insurance: String
    let malfunction: String
}
#Preview {
    SegmentControlViewm(details: MaintenanceDetails(
        make: "Toyota Camry (2020)",
        roNumber: "70990",
        vin: "70990",
        warningLights: "Yes",
        insurance: "No",
        malfunction: "No"
    ))
}
