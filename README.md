# Ponysay

### with a side helping of horsefortun.es

## Usage

```puppet
# Get ponysay
include ponysay

# (Optional) Install fortune and horse_ebooks fortunes file
include ponysay::horse_fortunes
# OR install just fortune
include ponysay::fortune
```

Then, after running boxen, you can do this:

```
$ fortune horse_ebooks | ponysay
```

![ponysay](http://files.arko.net/image/1P280o1T2g0J/Image%202013-07-18%20at%2012.36.56%20AM.png)

## Required Puppet Modules

* `boxen`
* `homebrew`
* `repository`
* `stdlib`
