Timberwolf's UK Trains
======================

A maximalist British train set featuring over 200 trains with:

- Long vehicle scale
- 2x sprites for all vehicles
- Smooth curve and hill animations
- 2CC selectable company colours
- Support for FIRS, ECS and YETI cargo types

It's recommended (although not necessary) to use this set with
Timberwolf's Tracks. You may also be interested in Timberwolf's
UK Road Vehicles for a consistent visual style and gameplay
balance.

Getting Started
---------------

Trains are much more expensive to purchase (and rather more 
expensive to run) than the standard OpenTTD vehicles. Start
small and don't over-extend at first; buy small tank engines
for your first route and upgrade when you have a profitable
network.

Some options for starting out:

- 1 or 2 small tank engines running short (2-3 tile) coal,
  iron or wood services.
- 1 medium locomotive with 2-3 carriages and a mail van
  running between two mid-sized towns. 
- A short passenger line between 3 or 4 close together
  towns using railcars or low end multiple units.

With only a small number of vehicles on a route, it's often
useful to use timetables to increase the time a train spends
at each station to improve station ratings without the long
delays a "full load" order might incur.

As you will often be using low powered vehicles at the start
of a game, especially when starting in the 1800s or earlier,
it's best to stick to flat routes or ones where the train
only has to climb hills when empty.

When starting a game after 1980, it may be easier to build
up some profitable road vehicle routes rather than gambling
most of your loan on a single train.

Costs can be adjusted in parameters if you prefer an easier
(or harder) game.

Running Costs
-------------

You will need to replace your trains even with breakdowns
set to "off"! As trains reach the end of their useful life
their running costs will increase, leaving you facing a
trade-off between decreasing profits and a large bill for
new locomotives.

The default "spicy" setting is balanced to make keeping
a particularly good class of locomotive running for a few
extra years a viable option if the route it serves is
highly profitable. You might find yourself envisaging an
alternate history where the 1930s streamliners were eked
out until the HST came along, or the APT-P plied modern
mainline services alongside Voyagers and Pendolinos.

Vehicles that were unsuccessful, unreliable or only built
as experimental prototypes tend to have shorter usable
life in game; be warned that if you use them, you will
spend a lot more on replacement or running costs than
the more proven options.

Tip: If you're playing Villages Is Villages with economic
settings enabled, increasing your operating expenses with
some older vehicles will make it easier to save up cash
for a megaproject, without losing it all to dividend
payouts.

Multiple Units
--------------

Unlike many sets, you will only be able to purchase
multiple units in their prototypical consists. These
can however be coupled together to form longer trains.

Working between multiple classes is supported with 
realistic rules, so you can couple a Class 455 to a 
Class 456 but not to a Sprinter.

As units with 8+ car consists and long carriages would
be excessively long, by default consists are truncated
to a maximum 6 tiles. This can be disabled (or reduced
to 4 tiles) with a parameter, but beware you will need
some very large stations to handle a full 20-car
Eurostar consist.

Unit Bonuses
------------

Some vehicles have bonuses or penalties which apply to
either that unit or the whole train which contains them.
These are displayed in the purchase menu. The most common
types of bonus:

* Passengers pay more for long distance journeys.
  (Typically express vehicles with slow loading speeds)
* Passengers pay less for long distance journeys.
  (Typically urban vehicles with high loading speeds)
* Slow trains travel faster with this wagon attached.
  (Brake vans)

The brake van bonus can be useful early game when wagons
are slow.

Symbols
-------

There are certain symbols used in the purchase menu to
indicate certain vehicle behaviours:

* x1...x20: this is a multiple unit, with the specified
            number of cars.
* <> (green): this vehicle will reverse when placed at
              the end of a train, or can be coupled
              nose to nose when doubled headed. A
              second power car is not required.
* <> (orange): this vehicle will reverse when placed at
               the end of a train. A second power car is
               required. (i.e. you must purchase at
               least two and place them in the same
               consist)


Station Ratings
---------------

From v1.4.0, an option to apply an improved station rating
algorithm is available.

This changes the rating parameters to better suit the set,
especially games with an early start year.

As early vehicles are slow and cargo wagons are generally
slower than the default vehicles, the speed of vehicle
required to get a full ratings boost will increase over time.

Passengers: Starts at 30km/h (19mph) in 1830, rises to 
            200km/h (125mph) by 2000.
            
Food/mail: Starts at 20km/h (12mph) in 1830, rises to
           130km/h (81mph) by 2000.

Other cargo: Starts at 20km/h (12mph) in 1830, rises to
             112km/h (70mph) by 2000.

Prior to 1830 the minimum values are used, and after 2000 the
maximum values are used.

The rating is also adjusted to account for the low capacities
and likelihood of infrequent service early in the game.

Prior to 1900 the number of days since last service is evaluated
more leniently, and larger amounts of waiting cargo are allowed 
before a ratings penalty. This effect is increased for dates
before 1850; people were clearly impressed just to see a train!

This is balanced by stricter treatment of waiting cargo from 1970
onward, with increased strictness from 2010. Cargo stations will
struggle to achieve maximum rating unless you always have a train
waiting to load cargo. Passenger stations may have a small number
of passengers waiting to allow interchange, but will suffer heavy
penalties for overcrowding.

As the default age mechanics make little sense with vehicles having
20+ year lifespans, there is a small extra bonus for exceptional 
service compared to the default rating algorithm, to negate the 
need to constantly replace vehicles and/or advertise to get full 
station ratings at well-served stations.

CC/Attributions
---------------

Voxel models and tooling: Matt Kimber / Timberwolf
Pikka's finescale tracks compatibility: Will Marshall


And Finally...
--------------

My thanks to all the people on the OpenTTD forums, 
IRC channel and Discord who offered suggestions, 
help and advice while I was creating the set, and
also to my YouTube subscribers and commenters for
encouraging me to post development videos.
