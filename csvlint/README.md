# Compose a csvlinter

Build csvlint via

  `docker-compose build`

Copy csv files into `../data`, then validate with

  `docker-compose run csvlint`


## Notes

The csvlint source is checked out from stratdat's github fork
  https://github.com/strategicdata/csvlint.rb.git
as that contains the customisations to work with the date formats we use.

The build is a multi-stage build; the csvlint gem is first built, then
copied into the final container to be installed.

