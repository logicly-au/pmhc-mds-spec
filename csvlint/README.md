# Compose a csvlinter

Build csvlint via

  `docker-compose build`

Copy

* intake csv files into `../data/intake`,
* hub csv files into `../data/hub`,
* combined csv files into `../data/hub` and
* delete csv files into `../data/delete`

set the $DATA_DIR env var appropriately:

  `export DATA_DIR=../data/intake`

then validate with

  `docker-compose run csvlint`

To validate a different set of example files set the $DATA_DIR directory again:

  `export DATA_DIR=../data/hub`

 then validate with

   `docker-compose run csvlint`

## Notes

The csvlint source is checked out from stratdat's github fork
  https://github.com/strategicdata/csvlint.rb.git
as that contains the customisations to work with the date formats we use.

The build is a multi-stage build; the csvlint gem is first built, then
copied into the final container to be installed.
