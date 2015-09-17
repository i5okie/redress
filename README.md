Redress
================

[LIVE DEMO](http://help.ibcworld.net)


Self-Service Driver/Documentation CMS
-----------


For visitors, Redress is a basic go-to self-service portal to download documentation and drivers for products.

For administrators, Redress is an easy to use CMS to list your products, with brief description, photo, user guides and manuals, drivers, etc.

Redress was born out of necessity to replace an aging single HTML file listing FTP links to download quick configuration guides, drivers, and etc. Redress is slightly opinionated by storing uploads on Amazon S3 (can be configured to any other FOG provider). This has some obvious benefits, especially when comparing to local or FTP storage. With a baked in administration instead of a admin gem, managing product listings is simple and intuitive. By default the app expects a Mandrill account for
notification emails. However this can be configured to just use a simple SMTP server to your preference.


The project is being developed with an open-source license in hopes to add further
functionality in the future. Some of this functionality could be issue tracking,
product tracking. Generating printable barcode label for customers to scan and
direct to specific product page, where they will be able to see any warranty information
as well as service contracts, etc.



The Guts
-------------

- Ruby 2.2.3
- Rails 4.2.4
- PostgreSQL
- Amazon S3 (expects by default, can be changed in configuration)
- Mandrill (expects by default, can be changed in configuration)

Getting Started
---------------
- Make sure you have Ruby 2.2.3
- Clone git repo, or download .zip
- run bin/bundle install
- confirm database.yml settings
- bin/rake db:setup
- make note of default admin user/password created in console (or look in seeds.rb), for production this is set in .env
- run bin/rails server
- login and populate. (right now it's configured to upload to Amazon S3, so either change settings as needed or change it to local file storage)

Screen Shots
------------
(old ones)
![](http://i.imgur.com/kdAZjjh.png)

![](http://i.imgur.com/27bADoh.png)


Issues
-------------
If you come across some bugs or errors, please [report an issue](https://github.com/i5okie/redress/issues) with detailed description.

Contributing
------------
Contributions are welcome with open arms. Please feel free to fork this project and submit issues/feature and pull requests.

Credits
-------
@i5okie
@rhizome



License
-------
Copyright (c) 2015 Ivan Polchenko

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
