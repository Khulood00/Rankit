//
//  ReviewsPage.swift
//  Rankit
//
//  Created by Khulood Alhamed on 01/11/2022.
//

import SwiftUI

struct ReviewsPage: View {
    

    @State private var rating: Int?

    
    @State private var ReviewText: String = ""
    @State var showImagePicker: Bool = false
       @State var image: Image? = nil


    var body: some View {
        ZStack{
            VStack{
                GeometryReader { geometry in
                    Image("AppleAcademy")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
            
            VStack{
                Text("Share Your Feedback")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 200.0)
                    .padding(.leading)
                    .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
            }
            VStack{
                Text("Rait the event")
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom, 140.0)
                    .padding(.leading)
                    .foregroundColor(Color(red: 82/255, green: 78/255, blue: 80/255))
            }
            
            VStack {
                      RatingView(rating: $rating, max: 5)
                     //  Text(rating != nil ? "You rating: \(rating!)" : "")
            }
            .padding(.bottom, 50.0)
            
            VStack{
                
                TextField("Type your review...", text: $ReviewText,axis: .vertical)
                    .foregroundColor(Color(red: 82/255, green: 78/255, blue: 80/255))
                    .lineLimit(7, reservesSpace: true)
                
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 7.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .padding()
            }.padding(.top, 200.0).frame(width: 340)
            
            VStack{
                Button(action: {
                    self.showImagePicker.toggle()
                }) {
                    
                    Image(systemName: "photo.on.rectangle")
                        .foregroundColor(Color(red: 94/255, green: 126/255, blue: 152/255))
                    Text("Upload from camera roll")
                        .foregroundColor(Color(red: 82/255, green: 78/255, blue: 80/255))
                        
                }
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [6.0]))
                        .frame(width: 305)
                        .foregroundColor(Color(red: 196/255, green: 196/255, blue: 198/255))
                )
                
                image?.resizable().frame(width: 50, height: 50)
                
                
                
            }
            .padding(.top, 450.0)
            
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(sourceType: .photoLibrary) { image in
                    self.image = Image(uiImage: image)
                }
            }
            
            VStack{
                Button("Send") {}
                    .padding(.vertical, -7.0)
                    .frame(width: 280)
                    .font(.system(size: 22))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 94/255, green: 126/255, blue: 152/255))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
            }
            .padding(.top, 600.0)
            
        }
    }
}

struct ReviewsPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsPage()
    }
}


struct ImagePicker: UIViewControllerRepresentable {

    @Environment(\.presentationMode)
    private var presentationMode

    let sourceType: UIImagePickerController.SourceType
    let onImagePicked: (UIImage) -> Void

    final class Coordinator: NSObject,
    UINavigationControllerDelegate,
    UIImagePickerControllerDelegate {

        @Binding
        private var presentationMode: PresentationMode
        private let sourceType: UIImagePickerController.SourceType
        private let onImagePicked: (UIImage) -> Void

        init(presentationMode: Binding<PresentationMode>,
             sourceType: UIImagePickerController.SourceType,
             onImagePicked: @escaping (UIImage) -> Void) {
            _presentationMode = presentationMode
            self.sourceType = sourceType
            self.onImagePicked = onImagePicked
        }

        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            onImagePicked(uiImage)
            presentationMode.dismiss()

        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            presentationMode.dismiss()
        }

    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentationMode: presentationMode,
                           sourceType: sourceType,
                           onImagePicked: onImagePicked)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

}
