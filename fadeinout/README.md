# ffmpeg-fadeinout

Add a fade-in and fade-out effect to one or several video files.

A recent version of `ffmpeg` is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../README.md).

## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.

## Usage

### Synopsis

```console
$ ffmpeg-fadeinout [OPTION]... INFILE...
```

#### Options

- **-t**, **--time**=_value_
  
  Set fade duration in seconds (default: `5`)

- **-m**, **--mode**=_value_
  
  Set fade mode: fade-in only (`i`), fade-out only (`o`), both (default: `b`)

- **-s**, **--stream**=_value_
  
  Fade video stream only (`v`), audio stream only ( `a`), or both (default: `b`)

- **-n**, **--name**=_value_
  
  Set default output filename suffix (default: `fadeinout`)

- **-y**, **--yes**
  
  Overwrite existing files

### See also

(...)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
