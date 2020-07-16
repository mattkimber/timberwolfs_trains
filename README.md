# Timberwolf's Trains

A set of UK trains.

## Scale

This set takes advantage of the larger canvas in MagicaVoxel to have larger, more detailed objects.

The scale is based on a "typical" vehicle such as a Mark Two coach being roughly 192x40x60, a slightly exaggerated size
designed to fit with the OpenTTD scale.

This gives a scale as follows:

Length: 10 voxels/m
Width:  15 voxels/m
Height: 15 voxels/m

In this scale a Mark Two coach is 196x42x58.

Wheels should be scaled according to the length (10 voxels/m) rather than other dimensions.

Some useful properties:

"Realistic" track gauge would be 21 voxels (round up to 22). OpenTTD's standard is to be somewhat broad gauge compared to
UK prototypes, so for models to sit right on tracks this should be at least 26 voxels with 4 voxel wide wheels. This 
"broad gauge" effect can be compensated for by moving vehicle bodies down 4 voxels, giving the appearance of a narrower
track gauge.

Note that for most vehicles it will be useful to round them to the nearest size for their in-game length. The tracking
table formula handles this, although the voxel object may need padding to correctly align when coupled.

The tracking table contains suitable voxel sizes for each size. These sizes assume vehicles have buffers!

### Making it work

Documentation on the sprite composition is a little thin on the ground, to make the feature work in NML the 
following is needed:

In the `item` declaration add the relevant `{veh_type}_FLAG_SPRITE_STACK` flags to `misc_flags`. e.g. for a
train which also supports 2CC recolouring, you will need the following:

```
misc_flags: bitmask(TRAIN_FLAG_2CC, TRAIN_FLAG_SPRITE_STACK);
```

Graphics will need to use a switch, this should be relatively straightforward but for completeness you
should have a `graphics` block looking something like this:

```
graphics {
    default:  switch_vehicle_graphics;
    // other switches
}
```

The graphics switch is where things get more complicated. This works a little bit like the articulation
callback in that it will be called up to 4 times, until it stores 0 in a specific temporary variable `0x100`. 
The lower bits of `extra_callback_info1` will contain the current iteration of the sprite loop.

It's clearest with an example:

```
switch(FEAT_TRAINS, SELF, switch_vehicle_graphics, [
    STORE_TEMP((getbits(extra_callback_info1, 8, 8) < 1 ? CB_FLAG_MORE_SPRITES : 0) | PALETTE_USE_DEFAULT, 0x100),
    getbits(extra_callback_info1, 8, 8)
    ]) {
    0: return spriteset_vehicle;    // Return the base sprite
    1: return spriteset_overlay;    // Return the overlay

    // The following should never be executed as the switch cases are exhaustiv
    return spriteset_invisible;
}
```

This example has a single static overlay to keep things simple, but `spriteset_overlay` could easily be a switch
or spritegroup for something more complex. Similarly,  the `getbits(extra_callback_info1, 8, 8) < 1` check could
be extended to `2` or `3` for more overlay sprites.

`PALETTE_USE_DEFAULT` can be replaced with `PALETTE_IDENTITY` if you do not want the composited sprites to be
recoloured. (This can also have a default or custom recolouring sprite specified.)

## Colours

Base 2cc primary colour = 204
Base 2cc secondary colour = 86

End plate yellow = 69
