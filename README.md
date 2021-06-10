# r10k-dashboard

(configs)

[Camptocamp](https://www.camptocamp.com/de) has a tool,
[r10k-dashboard](https://github.com/camptocamp/r10k-dashboard#puppet-modules-dashboard),
that parses a Puppetfile and checks certain things. It takes a Puppetfile as
source. This repository is a source for [Vox Pupuli](https://voxpupuli.org).

We run our own dashboard on [r10k-dashboard.voxpupu.li](https://r10k-dashboard.voxpupu.li/)

This dashboard has one script, generate_puppetfile.rb, that connects to forge.puppet.com,
gets all modules from the Vox Pupuli account, and writes them into a Puppetfile. The website
parses this file on each request.

## License

This is licensed under AGPL-3. See the LICENSE file for details.

## Author

This script is written by Tim 'bastelfreak' Meusel. Big thanks to Raphaël Pinson
for this help.
