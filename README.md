# Webcheck
[![Gem Version](https://badge.fury.io/rb/webcheck.svg)](https://badge.fury.io/rb/webcheck)

Check whether common files, such as `favicon.ico` are present in your new
project.

## Quickstart
Install the gem

```
gem install webcheck
```

Run on your website

```
webcheck news.ycombinator.com
```

will output

```
Checking news.ycombinator.com.
Found http://news.ycombinator.com/apple-touch-icon.png
Found http://news.ycombinator.com/browserconfig.xml
Found http://news.ycombinator.com/crossdomain.xml
Found http://news.ycombinator.com/favicon.ico
Found http://news.ycombinator.com/robots.txt
Found http://news.ycombinator.com/sitemap.xml
Found http://news.ycombinator.com/tile-wide.png
Found http://news.ycombinator.com/tile.png
No issues found.
```
