# CR6SE_Klipper
Klipper config files and scripts for CR6SE with stock hardware STM32F103RE CPU, v1.1.0.3 or 453 board (do not use for 452 boards or other boards). Set up for Mainsail, but can be converted to others.

Included files:

printer.cfg      - main config file <br>
CR6.cfg          - macros and other functions config <br>
inputShaper.cfg  - defaults for input shaper <br>
auto_shutdown.sh - script to be run in crontab to shut down Rpi if printer is off <br>
esteps.py        - calculator for esteps (rotation_distance) <br>
klipper.bin      - compiled Klipper firmware as of May 2023 for flashing the printer

**Instructions:**

1. Set up mainsail (follow directions here https://docs-os.mainsail.xyz/getting-started)
2. Build and flash Klipper for CR6SE https://www.klipper3d.org/Installation.html (alternatively use included build to flash the printer then update via web interface once all set up)
3. Use config files from this repo
