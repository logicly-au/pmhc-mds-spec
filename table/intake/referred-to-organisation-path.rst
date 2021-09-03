A combination of the Primary Health Network's (PHN's) Organisation Key and the
Provider Organisation's Organisation Key separated by a colon.

Here is an example organisation structure showing the Organisation Path for each organisation:

+------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
| Organisation Key | Organisation Name             | Organisation Type                           | Commissioning Organisation | Organisation Path |
+==================+===============================+=============================================+============================+===================+
| PHN999           | Test PHN                      | Primary Health Network                      | None                       | PHN999            |
+------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
| PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999                     | PHN999:PO101      |
+------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+

- Required where a client is referred to an organisation that is providing PMHC
  MDS reportable services.

- Where the client is referred to an organisation that is not providing PMHC
  MDS reportable services this field should be left blank.
