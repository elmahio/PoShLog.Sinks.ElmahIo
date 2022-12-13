# PoShLog.Sinks.ElmahIo

[![psgallery](https://img.shields.io/powershellgallery/v/poshlog.sinks.ElmahIo.svg)](https://www.powershellgallery.com/packages/PoShLog.Sinks.ElmahIo)

PoShLog.Sinks.ElmahIo is extension module for [PoShLog](https://github.com/PoShLog/PoShLog) logging module. Contains sink that publishes log messages to [elmah.io](https://elmah.io).

## Getting started

If you are familiar with PowerShell, skip to [Installation](#installation) section. For more detailed installation instructions check out [Getting started](https://github.com/PoShLog/PoShLog/wiki/Getting-started) wiki.

### Installation

To install PoShLog.Sinks.ElmahIo, run following snippet from PowerShell

```ps1
Install-Module -Name PoShLog.Sinks.ElmahIo
```

## Usage

```ps1
Import-Module PoShLog
Import-Module PoShLog.Sinks.ElmahIo

New-Logger |
    Add-SinkElmahIo -ApiKey 'API_KEY' -LogId 'LOG_ID' |
    Start-Logger

Write-ErrorLog 'Say My Name'

# Don't forget to close the logger
Close-Logger
```

### Documentation

These examples are just to get you started fast. For more detailed documentation please check [wiki](https://github.com/PoShLog/PoShLog/wiki).

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Authors

elmah.io

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

* Icon made by [Smashicons](https://smashicons.com/) from [www.flaticon.com](https://www.flaticon.com/).
