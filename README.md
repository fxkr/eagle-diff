# eagle-diff

Show differences between Cadsoft Eagle PCB layouts

Author: Felix Kaiser <felix.kaiser@fxkr.net>  
License: revised BSD (see LICENSE)  
Version: 0.1.0  


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


## Samples

Here are some low-resolution sample images of the bottom side of a simple PCB.

Individual images of the "new" version of the board:

![copper-bottom.2](/samples/copper-bottom.2.png)
![copper-bottom.2](/samples/default-bottom.2.png)

Diffs, without and with background image:

![copper-bottom.diff](/samples/copper-bottom.diff.png)
![copper-bottom.diff_bg](/samples/copper-bottom.diff_bg.png)

As usual, additions are green and deletions are red. You can easily see that some
traces and vias have been moved and the remaining traces have been made thicker.


## Dependencies

- Python Imaging Library (http://www.pythonware.com/products/pil/)
- CadSoft EAGLE (www.cadsoft.de)


## Caveats

- No cropping to dimension layer rectangle.
- Your two layouts must have the same size. (Otherwise the layouts will
  probably not be aligned correctly. Also, currently the output image
  size equals the size of the smaller board.)

