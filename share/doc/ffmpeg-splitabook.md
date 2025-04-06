# ffmpeg-splitabook

Split monolithic audio book into chapter files


## Synopsis

```console
$ ffmpeg-splitabook [OPTION]... INFILE...
```


## Description

This tool read the chapter information (if available) from an monolithic audiobook and crop all identified chapters into individual audio files.  Output files will be written to an output directory named by the basename of the input file.


## Options

+ `-t`, `--to` FORMAT

  Set target format (defaults to format of input file)

+ `-r`, `--readonly`

  Extract chapter information only

+ `-y`, `--yes`

  Overwrite existing files


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## See also

- [StackExchange](https://unix.stackexchange.com/questions/499179/using-ffmpeg-to-split-an-audible-audio-book-into-chapters)


## License

[MIT](https://choosealicense.com/licenses/mit/)
