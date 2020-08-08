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