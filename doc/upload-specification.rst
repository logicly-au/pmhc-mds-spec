.. _upload_specification:

Upload specification
====================

.. _file-requirements:

File requirements
-----------------
Uploads will be rejected by our incoming data scanning system if they do not
meet the following requirements:

* Must be either an :ref:`Excel Workbook (.xlsx) <excel-workbook>`,
* OR a :ref:`zip (.zip) file containing CSV files <csv-zip>`,
* AND must be :ref:`less than 512MB <file-size>`

.. _excel-workbook:

Excel Workbook (XLSX)
^^^^^^^^^^^^^^^^^^^^^
Excel files must be in XLSX format. Excel 2007 (v12.0) and above support this
file format.

One XLSX file must be uploaded containing multiple worksheets - one worksheet
for each format described :ref:`below <files-to-upload>`.

When saving your file, please choose the filetype 'Excel Workbook (.xlsx)'.

The filename of the Excel file doesn't matter as long as it has the file
extension .xlsx

.. _csv-zip:

Zip file containing Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The CSV files must conform to `RFC 4180 <https://www.ietf.org/rfc/rfc4180.txt>`__.

In addition, CSV files must be created using UTF-8 character encoding.

CSV files must have the file extension .csv

Multiple CSV files must be uploaded - one CSV file for each format described
:ref:`below <files-to-upload>`.

The CSV files must be compressed into a single file by zipping before upload. The
filename of the zip file doesn't matter as long as it has the file
extension .zip

.. _file-size:

File size
^^^^^^^^^
Files must be less than 512MB. The file size restriction prevents our systems
from becoming unstable if extremely large files are uploaded. We will monitor
if this limit causes issues for anyone and adjust it if necessary.

.. _files-to-upload:

Files or worksheets to upload
-----------------------------

Version 4 allows for different files/worksheets to be uploaded depending on
whether the organisation is an Intake team, Treatment Service Provider or
a combined Intake/Treatment Service Provider. Please refer to
:ref:`introduction-contexts` for further information about these contexts.

All files must be internally consistent. An example of what this means
is that for every HeadtoHelp episode, service contact and measures in an upload file,
there must be a corresponding episode in the episodes file/worksheet.
It also means that for every row in the episodes file/worksheet, there must be a
corresponding client in the clients file/worksheet.

.. _intake-files:

Files/worksheets for the Intake context
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When uploading Version 4 data files for the Intake context the following
files/worksheets need to be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload in Intake context
  :file: upload-file-types-intake.csv
  :header-rows: 1

Example Intake Upload files can be found at :ref:`example-upload-files`.

.. _treatment-files:

Files/worksheets for the Treatment Service Provider context
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When uploading Version 4 data files for the Treatment Service Provider context
the following files/worksheets need to be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload in Treatment Service Provider context
  :file: upload-file-types-treatment.csv
  :header-rows: 1

Example Treatment Upload files can be found at :ref:`example-upload-files`.

.. _combined-files:

Files/worksheets for the Combined Intake/Treatment Service Provider context
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

When uploading Version 4 data files for the combined Intake/Treatment Service Provider context
the following files/worksheets need to be uploaded to the PMHC MDS:

.. csv-table:: Summary of files to upload in Combined Intake/Treatment Service Provider context
  :file: upload-file-types-combined.csv
  :header-rows: 1

Example Combined Upload files can be found at :ref:`example-upload-files`.

.. _file-format:

File format
-----------

Requirements for file formats:

- The first row must contain the column headings as defined for each file type.
- Data elements for each file/worksheet are defined at :ref:`record-formats`.
- Each item is a column in the file/worksheet. The 'Field Name' as defined in
  :ref:`record-formats` must be used for
  the column headings. The columns must be kept in the same order.
- The second and subsequent rows must contain the data.
- All files must be internally consistent. An example of what this means is
  that for every row in the episode file/worksheet, there must be a
  corresponding client in the client file/worksheet.
- For data elements that allow multiple values, each value should be separated
  by a space; for example: `1 3 6`.
- All version 4.0 data uploads must include a Metadata file/worksheet.
  See :ref:`metadata-format`.


.. _metadata-format:

Metadata file
^^^^^^^^^^^^^

All version 4.0 data uploads must include a Metadata file/worksheet.
- In the first row, the first cell must contain 'key' and the second cell must contain 'value'
- In the second row, the first cell must contain 'type' and the second cell must contain 'PMHC'
- In the third row, the first cell must contain 'version' and the second cell must contain '4.0'

i.e.:

.. include:: shared/metadata-content.rst

Data elements for the metadata upload file/worksheet are defined at
:ref:`metadata-data-elements`.

Example Metadata files can be found at :ref:`example-upload-files`.

.. _organisation-format:

Organisation file format
^^^^^^^^^^^^^^^^^^^^^^^^
This file is for PHN use only. The organisation file/worksheet is optional. It can
be included to upload Provider Organisations in bulk or if there is a change in
Provider Organisation details. There is no harm in including it in every upload.

Data elements for the Provider Organisation upload file/worksheet are defined at
:ref:`provider-organisation-data-elements`.

Example Organisation files can be found in any of the example files at :ref:`example-upload-files`.

.. _client-format:

Client format
^^^^^^^^^^^^^
The client file/worksheet is required to be uploaded each time.

Data elements for the client upload file/worksheet are defined at
:ref:`client-data-elements`.

Example Client files can be found in any of the example files at :ref:`example-upload-files`.

.. _intake-format:

Intake format
^^^^^^^^^^^^^
The intake file/worksheet is required to be uploaded each time in the intake
or combined intake/treatment service provider contexts.

Data elements for the intake upload file/worksheet are defined at
:ref:`intake-data-elements`.

Example Intake files can be found in the Intake or Combined example files
at :ref:`example-upload-files`.

.. _iar-dst-format:

IAR-DST format
^^^^^^^^^^^^^^
The IAR-DST file/worksheet is required to be uploaded each time in the intake
or combined intake/treatment service provider contexts.

Data elements for the IAR-DST upload file/worksheet are defined at
:ref:`iar-dst-data-elements`.

Example IAR-DST files can be found in the Intake or Combined example files
at :ref:`example-upload-files`.

.. _intake-episode-format:

Intake Episode format
^^^^^^^^^^^^^^^^^^^^^
The intake episode file/worksheet is required to be uploaded each time in the
treatment service provider or combined contexts.

Data elements for the intake episode upload file/worksheet are defined at
:ref:`intake-episode-data-elements`.

Example Intake Episode files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^
The episode file/worksheet is required to be uploaded each time in the
treatment service provider or combined contexts.

Data elements for the episode upload file/worksheet are defined at
:ref:`episode-data-elements`.

Example Episode files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact file/worksheet is required to be uploaded each time in the
treatment service provider or combined contexts.

Data elements for the service contact upload file/worksheet are defined at
:ref:`service-contact-data-elements`.

Example Service Contact files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _service-contact-practitioner-format:

Service Contact Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact practitioner file/worksheet is required to be uploaded
each time in the treatment service provider or combined contexts.

Data elements for the service contact practitioner upload file/worksheet are defined at
:ref:`service-contact-practitioner-data-elements`.

Example Service Contact Practitioner files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _collection-occasion-format:

Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The collection occasion file/worksheet is required to be uploaded
each time in the treatment service provider or combined contexts.

Data elements for the collection occasion upload file/worksheet are defined at
:ref:`collection-occasion-data-elements`.

Example Collection Occasion files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _k10p-format:

K10+ file format
^^^^^^^^^^^^^^^^
The K10+ file/worksheet is required to be uploaded each time in the treatment
service provider or combined contexts.

Data elements for the K10+ collection occasion upload file/worksheet are defined
at :ref:`k10p-data-elements`.

Example K10+ files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _k5-format:

K5 file format
^^^^^^^^^^^^^^
The K5 file/worksheet is required to be uploaded each time in the treatment
service provider or combined contexts.

Data elements for the K5 collection occasion upload file/worksheet are defined
at :ref:`k5-data-elements`.

Example K5 files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _sdq-format:

SDQ file format
^^^^^^^^^^^^^^^
The SDQ file/worksheet is required to be uploaded each time in the treatment
service provider or combined contexts.

Data elements for the SDQ collection occasion upload file/worksheet are defined
at :ref:`sdq-data-elements`.

Example SDQ files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.


.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file/worksheet is required for the first upload and if there
is a change in practitioners. It is optional otherwise. There is no harm in
including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
:ref:`practitioner-data-elements`.

Example Practitioner files can be found in the Treatment or Combined
example files at :ref:`example-upload-files`.

.. _example-upload-files:

Example Upload files
--------------------

Each of the example files assumes the following organisation structure:

+--------------------------+------------------------------------------------+---------------------------------------------+---------------------+
| Organisation Key         | Organisation Name                              | Organisation Type                           | Parent Organisation |
+==========================+================================================+=============================================+=====================+
| PHN999                   | Test PHN                                       | Primary Health Network                      | None                |
+--------------------------+------------------------------------------------+---------------------------------------------+---------------------+
| PHN999:IntakeTreatment01 | Example Combined Intake/Treatment Organisation | Private Allied Health Professional Practice | PHN999              |
+--------------------------+------------------------------------------------+---------------------------------------------+---------------------+
| PHN999:Treatment01       | Example Treatment Organisation                 | Private Allied Health Professional Practice | PHN999              |
+--------------------------+------------------------------------------------+---------------------------------------------+---------------------+
| PHN999:Intake01          | Example Intake Organisation                    | Other                                       | PHN999              |
+--------------------------+------------------------------------------------+---------------------------------------------+---------------------+

.. csv-table:: Summary of example upload files
  :file: example-files.csv
  :header-rows: 1

.. _deleting-records:

Deleting records
----------------

All records except for Organisation records  can be deleted via upload.
Please email support@pmhc-mds.com if you need to delete an organisation.

* An extra optional "delete" column can be added to each of the supported
  upload files/worksheets.

* If included, this column must be the third column in each file, after the organisation
  path and the record's entity key.

* To delete a record, include its organisation path and its entity key, leave
  all other fields blank and put "delete" in the "delete" column. Please note
  that case is important. "DELETE" will not be accepted.

* Marking a record as deleted will require all child records of that record also
  to be marked for deletion. For example, marking a client as deleted will
  require all episodes, service contacts and collection occasions of that
  client to be marked for deletion.

* While deletions can be included in the same upload as insertions/updates,
  we recommend that you include all deletions in a separate upload that is
  uploaded before the insertions/updates.

Example files showing how to delete via upload:

- `XLSX file containing all the worksheets <_static/example-files/PMHC-4-0-combined-delete.xlsx>`_.
- `CSV zip containing all the csv files  <_static/example-files/PMHC-4-0-combined-delete.zip>`_.


Frequently Asked Questions
--------------------------

Please also refer to `Uploading data <http://docs.pmhc-mds.com/en/v1/faqs/system/uploading.html#uploading-data-faqs>`_ for answers to frequently
asked questions about uploading data.
