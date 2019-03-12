# ghidra-chip8
Ghidra processor for the CHIP8 virtual machine

This is a work-in-progress CHIP8 processor for NSA's SRE tool Ghidra.

To load a CHIP8 program, you need to import it as "Raw Binary", change the language to `CHIP8:BE:default:default` and change the "Base Address" in the options to `0x200`.

<p align="center">
<img width="612" alt="Load Binary" src="https://user-images.githubusercontent.com/16033421/54198172-1bac4980-44c6-11e9-92ef-35f38a21b728.png">
</p>

<p align="center">
<img width="497" alt="Update settings" src="https://user-images.githubusercontent.com/16033421/54197977-9de83e00-44c5-11e9-879b-2ef04c4a54fc.png">
</p>

### Build

Build using `gradle` to produce an extension zip. Update the installation path to Ghidra as appropriate.

```
gradle -PGHIDRA_INSTALL_DIR=$HOME/ghidra_9.0/
```

### Install

Unpack the resulting zip in to `ghidra_9.0/Ghidra/Processors`.
