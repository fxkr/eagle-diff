# eagle-diff: show differences between Cadsoft Eagle PCB layouts

Author: Felix Kaiser <felix.kaiser@fxkr.net>  
License: revised BSD (see LICENSE)  
Version: 0.0.1  

## Usage


```
eagle-diff [-h] [-V] [-d DPI] [--eagle EAGLE] file1 file2 [output]

Show differences between Cadsoft Eagle files

positional arguments:
  file1              'old' version of the .brd file
  file2              'new' version of the .brd file
  output             output directory (will be created; default: eagle_diff)

optional arguments:
  -h, --help         show this help message and exit
  -V, --version      show program's version number and exit
  -d DPI, --dpi DPI  resolution of the generated images (default: 600)
  --eagle EAGLE      eagle binary to use (default: eagle)
```

## Dependencies

- Python Imaging Library (http://www.pythonware.com/products/pil/)
- CadSoft EAGLE (www.cadsoft.de)

## Caveats

- No cropping to dimension layer rectangle.
- Your two layouts must have the same size. (Otherwise the layouts will
  probably not be aligned correctly. Also, currently the output image
  size equals the size of the smaller board.)

