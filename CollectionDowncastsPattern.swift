//Swift 5.8
protocol Animal {
    func sound()
}

class Cat: Animal {
    func sound() {
        print("Meow!!!")
    }
}


class Horse: Animal {
    func sound() {
        print("Neigh!!!")
    }
}


func sound(animals: [Animal]) {
    switch animals {
    case let animals as [Cat]:
      _ =  animals.map {
            $0.sound()
            //some extra operations
        }
    case let animals as [Horse]:
        _  = animals.map {
            $0.sound()
            //some extra operations
        }
    default:
        print("No Sound")
    }
}
