# SwiftUI-Component-Uses

## Content

> [Vertical Stack]
```swift
VStack{
      Text("Hello Github")
      Button()
} 
```

> [Horizontal Stack]
```swift
HStack{
      Text("Hello")
      Text("Github")
}
```

> [Text]
```swift
Text("Hello Github")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .lineLimit(1)
            .padding(.horizontal, 6)
            .padding(.vertical, 6)
            .cornerRadius(4)
            .offset(x:40,y:-50)
            .opacity(0.9)
```
> [Responsive Screen]
```swift
Image(image)
		.resizable()
		aspectRatio(contentMode: .fit)
            .frame(width:UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
```
> [Image]
```swift
Image(image)
		.resizable()
		.aspectRatio(contentMode: .fit)
		.frame(width:UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
		//Dynamic Ratio changed according to screen
		.clipShape(Circle())
		.overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
```
> [Reuseable Views]
```swift
Define Design/Views in speretate SwiftUI File then use it anywhere.

```
> [Button]
```swift
Button(action: (
      {
            print("Button Clicked")
      }),
      label: {
            Text("Register")
      }.offset(x:55)
```
> [Navigation]
```swift
NavigationView{
      VStack{
            NavigationLink(destination: NavigationFirstView()){
                  Text("Click Me")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 15)
                        .background(Color("proBlue"))
                        .foregroundColor(Color.white)
            }
      }.navigationBarTitle("Udmey")
}
```
* NavigationView should be use at Root only.
> [Lists]
```swift
List{
      ForEach(myArray, id: \.self){ item in
            Text(item).foregroundColor(Color.orange)
      }
} // Type - 1 of List

List(myArray, id: \.self){items  in
      Text(items)
} // Type - 2 of List
```
> [Model]
```swift
struct Musician : Identifiable {
    var id = UUID()
    var genre: String
    var bands: [String]
}

let rock = Musician(genre: "Rock", bands: ["Deep Purple", "Led Zeppelin", "Pink Floyd"])
let metal = Musician(genre: "Metal", bands: ["Metallica", "Megadeth", "Iron Maiden"])
let pop = Musician(genre: "Pop", bands: ["Madonnda", "Rihanna", "Beyonce"])

let musicianArray = [rock, metal, pop]
```
* Data Definition
> [Sections]
```swift
List{
      ForEach(musicianArray){ musician in
            Section(header: Text(musician.genre)){
                    ForEach(musician.bands, id: \.self{ band in
                        Text(band)
                    }
                }
            }
        }
```
* Section provides Header and Footer for List

> [Binding]
```swift
// Define in this file "TravelListDetailSeenBool"
@Binding var seenOrNot : Bool
var body: some View {
        Button(action: {
            self.seenOrNot.toggle()
        }) {
            Text(self.seenOrNot ? "Seen" : "Unseen")
        }
    }
}
//Used in this file "TravelListDetail"
TravelListDetailSeenBool(seenOrNot: $seen)
```
> [Clickable List]
```swift
List(TravelArray){ travel in
            NavigationLink(destination: TravelListDetailView(chosenTravel: travel)) {
                Text(travel.name)
            }
        }
```
> [Sheet]
```swift
VStack{
      Button(action: {
            if self.number > 5{
                  self.shown.toggle()
            }
      }) {
            Text("Go to Second Page")
            }.sheet(isPresented: $shown) { () -> SheetPopoverSecondView in
                  return SheetPopoverSecondView()
                  }   
      }// Vstack
      .offset(y: 80)
```
