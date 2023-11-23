# ffmpeg-concat

Concatenate multiple video files.

A recent version of `ffmpeg` is required.

This utlity is part of the bundle `ffmpeg-tools` documented [here](../README.md).

## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.

## Description

FFmpeg has three concatenation methods:

1. **concat filter**
   
   Use this method if your inputs do not have the same parameters (width, height, etc.) or are not the same formats/codecs, or if you want to perform any filtering. Note that this method performs a re-encode of all inputs.

2. **concat demuxer**
   
   Use this method when you want to avoid re-encode and your format does not support file-level concatenation (most files used by general users do not support file-level concatenation).

3. **concat protocol**
   
   Use this method with formats that support file-level concatenation (MPEG-1, MPEG-2 PS, DV). Do _not_ use with MP4. This method does not work for many formats, including MP4, due to the nature of these formats and the simplistic physical concatenation performed by this method. It is equivalent of just raw joining the files.

## Usage

### Synopsis

```console
$ ffmpeg-concat [-y] [-m METHOD] INFILE... OUTFILE
```

### Options

**-m**, **--method**=_value_

: Select concatenation method: `filter` , `demuxer`  or `protocol`

**-y**, **--yes**
: Overwrite existing files

## See also

- [Stackoverflow: How to concatenate two MP4 files using ffmpeg](https://stackoverflow.com/questions/7333232)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
