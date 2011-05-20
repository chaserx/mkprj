# mkprj

A [Thor](https://github.com/wycats/thor) based set of tasks to quickly bootstrap a simple web/html project.

Templates:

- basic XHTML (strict)
- HTML5 (really basic)
- HTML5 Boilerplate


This repo contains Paul Irish's HTML5-boilerplate repo as a git submodule. Some further action maybe required to get that repo content.

Current usage:

gem install thor

cd path/mkprj

thor mkprj:create ~/someotherpath/my_project --prjtype=html5

Options:

- basic
- html5
- boilerplate


Ideal Usage as a gem or otherwise as an executable:

mkprj create my_project --prjtype=html5