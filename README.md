# Timberwolf's UK Trains

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

## Getting Started

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

When starting a game after 1980, it may be easier to build
up some profitable road vehicle routes rather than gambling
most of your loan on a single train.

Costs can be adjusted in parameters if you prefer an easier
(or harder) game.

## Running Costs

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

## Multiple Units

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

## Buffet Cars

Some of the carriages offer buffet/restaurant cars.
These have a high running cost and small passenger
capacity, but provide a bonus to long distance travel
for the entire consist. This can be well worth using
on long, busy routes.

## Unit Bonuses

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

Preservation Railways
---------------------

Preservation railways are a new feature for the Community
Addon. In order to build a preservation railway, attach
a carriage marked as having the "Preserve railway bonus"
to an old locomotive.

As locomotives get older, passengers will enjoy longer
trips before the amount they pay for their journey reduces;
people in the OpenTTD world are more interested in travelling
behind a 100 year old locomotive than a 30-40 year old one.
A longer preserved line with smaller and cheaper locomotives
over a century old can be very profitable!

Note that elderly mainline locomotives will be very expensive
to run, even at the restricted speeds of a preservation
railway. Long-lived narrow gauge locomotives may be an easier
option, emulating the very first preserved railways.

## Narrow Gauge

The Community Addon features a new type of railway:
narrow gauge. This will show up if you have a railtype set
that includes the NGRL track type - as ever, Timberwolf's
Tracks is recommended.

Narrow gauge trains are smaller, slower and have lower
capacities than their mainline counterparts. However they
are also cheaper to buy and run, and exceptionally long
lived. This makes them a good option for starting the
game when funds are limited, or for servicing industries
with low output.

Due to their long life, narrow gauge locomotives are an
excellent option for running preserved railways. 

## Dandy Wagons

Horse-drawn trains on narrow gauge railways can benefit
from dandy wagons - these allow the horse to ride in a
wagon when travelling downhill and gravity to take over,
resulting in much higher speeds.

Each dandy wagon can carry two ponies. You will need to
build enough dandy wagons for all of your horses to benefit
from them. When a train has sufficient dandy wagons the
colour of horses will change as an indication. (And not
just because the set needs to do so in order to make
horse colours consistent between when the horses are
in or out of a wagon).

Such gravity railways are a highly viable option early on
in the game, if you can find suitably located industries.

## Fictional Vehicles

British Railways had a complex and often difficult history,
especially in the 1960s when some considered the railways
to be a historical irrelevance and that road transport was
to be the future.

This means that BR either did not continue to develop or
abandoned some forms of cargo transport entirely, even
where a keen OpenTTD player might consider that a matter
for the railway to handle.

To enable this style of gameplay, a small number of extra
vehicles representing plausible "what-if?" scenarios are
included with this set. These are noted in the description
whan purchasing, but if you prefer the challenge of working
out what to do with cargo that BR stopped transporting in
the mid 20th century, they can be disabled via parameter.

## Symbols

There are certain symbols used in the purchase menu to
indicate certain vehicle behaviours:

* ![x1.](purchase_sprites/x1.png) ... ![x20.](purchase_sprites/x20.png): this is a multiple unit, with the specified
            number of cars.
* ![green angle brackets.](purchase_sprites/double_headed.png): this vehicle will reverse when placed at
              the end of a train, or can be coupled
              nose to nose when doubled headed. A
              second power car is not required.
* ![orange angle brackets.](purchase_sprites/second_power_car.png): this vehicle will reverse when placed at
               the end of a train. A second power car is
               required. (i.e. you must purchase at
               least two and place them in the same
               consist)

## Building from source

Building from source is unfortunately not user-friendly. You will need to build a lot of prerequisites and
have access to the GNU tools, either via a Linux or Mac environment or Windows via Git Bash or WSL.

(Note that the executables are expected to have Windows-style names, take note if you are building the
Go projects on a different platform)

### Prerequisites

You will need to obtain and build the following:

* [GoRender](https://github.com/mattkimber/gorender) - used for rendering voxel objects.
* [Purchaser](https://github.com/mattkimber/purchaser) - used for creating purchase menu sprites.
* [Cargopositor](https://github.com/mattkimber/cargopositor) - used for compositiing cargo and animation objects.
* [Roadie](https://github.com/mattkimber/roadie) - used for templating and creating NML files.

If you want to play around with the sprite templates and offsets (xrels/yrels) these are generated using
[Temporarily Late](https://github.com/mattkimber/temporarily_late), but it is not necessary if you're
happy using the existing templates. 

The build expects to find prerequisites in the following relative folder structure (note `.exe` extension):

* Roadie: `../roadie/roadie.exe`
* GoRender: `../gorender/renderobject.exe`
* Cargopositor: `../cargopositor/cargopositor.exe`
* Purchaser: `../purchaser/purchaser.exe`

### Building

To build the full set, run `./build.sh`. This will take a long time as it needs to render every vehicle.
Future runs will not overwrite files, to re-render something you will need to delete its PNG file from
the `2x` directory.

If you are iterating something in NML and don't need to go through the sprite build process, you can
use `./roadie.sh` instead for a quicker build.

`./produce_templates.sh` rebuilds templates using Temporarily Late, if necessary.