Site names are case sensitive and each site name must have between 2-50 valid unicode characters excluding commas (',').
Names must start with A-Za-z0-9 (POSIX :alnum:).

May be left blank if the organisation only has one site.

Multiple site fields can be defined by comma separating each site name. For example:

   "Orange County, Deep Creek, Northern Side of the River"

In order to ensure consistency of data, site names cannot be deleted via upload, only data entry. An example of how 
uploads will process the sites field is, if "Orange County, Deep Creek" is uploaded first and then 
"Orange Country, Northern Side of the River" is uploaded second, they would be merged and the PMHC MDS would store 
"Orange County, Deep Creek, Northern Side of the River".

Please refer to :ref:`organisation-current-validations` for validations relating to this field.

