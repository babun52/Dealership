require('rspec')
require('vehicle')

describe('Vehicle') do
  before() do
    Vehicle.clear()
  end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "white")
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "white")
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "white")
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

describe(".all") do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

 describe("#save") do
    it("adds a vehicle to the array of saved vehicles") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "white")
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

 describe(".clear") do
    it("empties out all of the saved vehicles") do
      Vehicle.new("Toyota", "Prius", 2000, "white").save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#age") do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "white")
      expect(test_vehicle.age()).to(eq(16))
    end
  end

  describe("#worth_buying?") do
    it("returns false if the car is not American made and less than 15 years old") do
      test_vehicle = Vehicle.new("Ford", "Fiesta", 2006, "blue")
      expect(test_vehicle.worth_buying?()).to(eq(true))
    end
  end

  describe("#color") do
    it("returns the vehicles color") do
      test_vehicle = Vehicle.new("Mazda", "RX6", 2010, "red")
      expect(test_vehicle.color()).to(eq("red"))
    end
  end

  describe("#id") do
    it("returns the id of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "purple")
      test_vehicle.save()
      expect(test_vehicle.id()).to(eq(1))
    end
  end

  describe(".find") do
  it("returns a vehicle by its id number") do
    test_vehicle = Vehicle.new("Toyota", "Prius", 2000, 'orange')
    test_vehicle.save()
    test_vehicle2 = Vehicle.new("Toyota", "Corolla", 1999, 'black')
    test_vehicle2.save()
    expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
  end
end

end