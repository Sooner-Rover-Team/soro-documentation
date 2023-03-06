# GPS-RTK2

The GPS-RTK2, sometimes called the ZED-F9P after its receiver chip, is a GNSS (global navigation satellite system) board that works to provide wide locational data. It supports RTK for error-correction, allowing it to pinpoint location down to around 10mm of accuracy.

## Setup

To use the board, you'll need to connect up an antenna. Currently, we're using a Swift GPS500 to receive our GPS data, but it may or may not work correctly. Sparkfun's [Hookup Guide](https://learn.sparkfun.com/tutorials/gps-rtk2-hookup-guide) is pretty good, so take a look there!

### Software

While you can use proprietary software to view the information given by the board, it's probably a better idea to stick to modern, open source software instead.

In particular, using `gpsd` in the background along with `gpsmon` to display the data graphically in your terminal will help you see how things are working.

To install gpsd and gpsmon, use your package manager to install its package(s).

**Fedora, CentOS, and RHEL**:
`sudo dnf install gpsd`

**Ubuntu, Debian, and Pop!_OS**:
`sudo apt install gpsd`

**macOS**:
`brew install gpsd`

**Windows**:
[Use WSL, bud.](https://gpsd.gitlab.io/gpsd/installation.html#_special_notes_for_windows) I suggest either Fedora or Ubuntu like above :)

### Connecting

To connect to the RTK2 with `gpsd`, run these commands:

```bash
$ sudo gpsd /dev/ttyACM0 -F /var/run/gpsd.sock
# it probably won't say anything
$ sudo gpsmon /dev/ttyACM0
# and it'll go into a little terminal ui
```

You may have to replace `/dev/ttyACM0` with `/dev/ttyUSB0`, or something else...
