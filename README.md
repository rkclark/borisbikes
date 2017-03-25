# Makers Academy Week 1 Challenge: Boris Bikes Challenge

An introductory project to cover the basics of Test Driven Development and Object Oriented Programming. A basic ruby app that handles the docking and undocking of Boris Bikes from a docking station.


### Installation

- Clone this repo
- In the project root, run `bundle install`
- To try the app, run `irb` then follow the usage example below

### Usage

```
>> require './lib/bike.rb'
>> require './lib/dockingstation.rb'
>> Bike1 = Bike.new
=> #<Bike:0x0000000215f818>
>> Bike2 = Bike.new
=> #<Bike:0x0000000215c8c0>
>> Bike3 = Bike.new
=> #<Bike:0x00000002159878>
>> DStation = DockingStation.new
=> #<DockingStation:0x000000021491a8 @docked_bikes=[], @capacity=20>
>> DStation.dock(Bike1)
=> [#<Bike:0x0000000215f818>]
>> DStation.dock(Bike2)
=> [#<Bike:0x0000000215f818>, #<Bike:0x0000000215c8c0>]
>> DStation.dock(Bike3)
=> [#<Bike:0x0000000215f818>, #<Bike:0x0000000215c8c0>, #<Bike:0x00000002159878>]
>> DStation.release_bike
=> #<Bike:0x00000002159878>
>> DStation.docked_bikes
=> [#<Bike:0x0000000215f818>, #<Bike:0x0000000215c8c0>]
>> DStation.release_bike
=> #<Bike:0x0000000215c8c0>
>> DStation.docked_bikes
=> [#<Bike:0x0000000215f818>]
>> DStation.release_bike
=> #<Bike:0x0000000215f818>
>> DStation.docked_bikes
=> []
>> DStation.release_bike
RuntimeError: There are no docked bikes!
	from /home/rick/web/borisbikes/lib/dockingstation.rb:12:in `release_bike'
	from (irb):18
	from /usr/share/rvm/rubies/ruby-2.3.3/bin/irb:11:in `<main>'
>> 
```
