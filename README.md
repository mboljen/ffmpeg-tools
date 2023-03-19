# ffmpeg-tools

...

## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.

## Usage

```bash
$ audioshift [-a _time_] [-v _time_] _infile_ [..]
```

```bash
$ cattsfile [-y] _infile_ [..]
```

```bash
$ cropdetect [-s _time_] [-t _time_] [-c _limit_:_round_:_skip_:_reset_] _infile_
```

```bash
$ fadeinout [-t _time_] [-m _mode_] [-s _stream_] [-n _suffix_] [-y] _infile_
```

```bash
$ watermark [-a _anchor_] [-s _number_] [-m _pixel_] [-y] _watermark_ _infile_ [..]
```

## See also

...

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
