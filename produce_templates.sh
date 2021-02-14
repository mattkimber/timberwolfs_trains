#!/bin/bash
../temporarily_late/main.exe files/manifest.json files/manifest_sections.json  > templates/static/sprite_templates.nml
../temporarily_late/main.exe files/manifest_hill.json > templates/static/sprite_templates_hills.nml


../temporarily_late/main.exe -anim files/manifest.json files/manifest_sections.json  > templates/static/sprite_templates_anim.nml
../temporarily_late/main.exe -anim files/manifest_hill.json > templates/static/sprite_templates_hills_anim.nml
