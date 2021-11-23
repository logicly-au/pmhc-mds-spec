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
Excel files must be in XLSX format. The following versions of Excel support this
format:

- Excel 2007 (v12.0)
- Excel 2010 (v14.0)
- Excel 2013 (v15.0)
- Excel 2016 (v16.0)

One XLSX file must be uploaded containing multiple worksheets - one worksheet
for each format described :ref:`below <files-to-upload>`.

When saving your file, please choose the filetype 'Excel Workbook (.xlsx)'.

The filename of the Excel file doesn't matter as long as it has the file
extension .xlsx

.. _csv-zip:

Zip file containting Comma Separated Values (CSV)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
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
Version 4 allows for different following files/worksheets to be uploaded in
different contexts.

Intake
^^^^^^

.. csv-table:: Summary of files to upload in Intake context
  :file: upload-file-types-intake.csv
  :header-rows: 1

Hub Service Provider
^^^^^^^^^^^^^^^^^^^^

.. csv-table:: Summary of files to upload in Hub Service Provider context
  :file: upload-file-types-hub-only.csv
  :header-rows: 1

Combined Intake/Hub Service Provider
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. csv-table:: Summary of files to upload in Combinded Intake/Hub Service Provider context
  :file: upload-file-types-combined.csv
  :header-rows: 1

Non Hub Service Provider
^^^^^^^^^^^^^^^^^^^^^^^^

.. csv-table:: Summary of files to upload in Non Hub Service Provider context
  :file: upload-file-types-non-hub.csv
  :header-rows: 1

Each of the example files assumes the following organisation structure:

+------------------+----------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name          | Organisation Type                           | Parent Organisation |
+==================+============================+=============================================+=====================+
| PHN999           | Test PHN                   | Primary Health Network                      | None                |
+------------------+----------------------------+---------------------------------------------+---------------------+
| NFP01            | Test Provider Organisation | Private Allied Health Professional Practice | PHN999              |
+------------------+----------------------------+---------------------------------------------+---------------------+

.. _file-format:

File format
-----------
Requirements for file formats:

- The first row must contain the column headings as defined for each file type.
- Each item is a column in the file/worksheet. The 'Field Name' must be used for
  the column headings. The columns must be kept in the same order.
- The second and subsequent rows must contain the data.
- Data elements for each file/worksheet are defined at :ref:`record-formats`.
- All files must be internally consistent. An example of what this means is
  that for every row in the episode file/worksheet, there must be a
  corresponding client in the client file/worksheet.
- All version 2.0 data uploads must include a Metadata file/worksheet. See :ref:`metadata-format`.

.. _metadata-format:

Metadata file
^^^^^^^^^^^^^

All version 2.0 data uploads must include a Metadata file/worksheet.
- In the first row, the first cell must contain 'key' and the second cell must contain 'value'
- In the second row, the first cell must contain 'type' and the second cell must contain 'PMHC'
- In the third row, the first cell must contain 'version' and the second cell must contain '2.0'

i.e.:

.. include:: shared/metadata-content.rst

Data elements for the metadata upload file/worksheet are defined at
:ref:`metadata-data-elements`.

Example metadata data:

.. This is a comment. metadata validation rules required!

- To be provided when specification finalised

.. - `CSV metadata file <_static/metadata.csv>`_.
.. - `XLSX metadata worksheet <_static/pmhc-upload.xlsx>`_.

.. _client-format:

Client format
^^^^^^^^^^^^^
The client file/worksheet is required to be uploaded each time.

Data elements for the client upload file/worksheet are defined at
:ref:`client-data-elements`.

Example client data:

- To be provided when specification finalised

.. - `CSV client file <_static/clients.csv>`_.
.. - `XLSX client worksheet <_static/pmhc-upload.xlsx>`_.

.. _intake-format:

Intake format
^^^^^^^^^^^^^
The intake file/worksheet is required to be uploaded each time in the intake
or combined intake/hub service provider contexts.

Data elements for the intake upload file/worksheet are defined at
:ref:`intake-data-elements`.

Example intake data:

- To be provided when specification finalised

.. - `CSV intake file <_static/intakes.csv>`_.
.. - `XLSX intake worksheet <_static/pmhc-upload.xlsx>`_.

.. _iar-dst-format:

IAR-DST format
^^^^^^^^^^^^^^
The IAR-DST file/worksheet is required to be uploaded each time in the intake
or combined intake/hub service provider contexts.

Data elements for the IAR-DST upload file/worksheet are defined at
:ref:`iar-dst-data-elements`.

Example IAR-DST data:

- To be provided when specification finalised

.. - `CSV IAR-DST file <_static/iar-dst.csv>`_.
.. - `XLSX IAR-DST worksheet <_static/pmhc-upload.xlsx>`_.

.. _intake-episode-format:

Intake Episode format
^^^^^^^^^^^^^^^^^^^^^
The intake episode file/worksheet is required to be uploaded each time in the
hub service provider or combined contexts.

Data elements for the intake episode upload file/worksheet are defined at
:ref:`intake-episode-data-elements`.

Example intake episode data:

- To be provided when specification finalised

.. - `CSV intake epsiode file <_static/intake-episode.csv>`_.
.. - `XLSX intake episode worksheet <_static/pmhc-upload.xlsx>`_.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^
The episode file/worksheet is required to be uploaded each time in the
hub/non hub service provider or combined contexts.

Data elements for the episode upload file/worksheet are defined at
:ref:`episode-data-elements`.

Example episode data:

- To be provided when specification finalised

.. - `CSV episode file <_static/episodes.csv>`_.
.. - `XLSX episode worksheet <_static/pmhc-upload.xlsx>`_.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact file/worksheet is required to be uploaded each time in the
hub/non hub service provider or combined contexts.

Data elements for the service contact upload file/worksheet are defined at
:ref:`service-contact-data-elements`.

Example service contact data:

- To be provided when specification finalised

.. - `CSV service contact file <_static/service-contacts.csv>`_.
.. - `XLSX service contact worksheet <_static/pmhc-upload.xlsx>`_.

.. _service-contact-practitioner-format:

Service Contact Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact practitioner file/worksheet is required to be uploaded
each time in the hub/non hub service provider or combined contexts.

Data elements for the service contact practitioner upload file/worksheet are defined at
:ref:`service-contact-practitioner-data-elements`.

Example service contact practitioner data:

- To be provided when specification finalised

.. - `CSV service contact practitioner file <_static/service-contact-practitioners.csv>`_.
.. - `XLSX service contact practitioner worksheet <_static/pmhc-upload.xlsx>`_.

.. _collection-occasion-format:

Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The collection occasion file/worksheet is required to be uploaded
each time in the hub/non hub service provider or combined contexts.

Data elements for the collection occasion upload file/worksheet are defined at
:ref:`collection-occasion-data-elements`.

Example collection occasion data:

- To be provided when specification finalised

.. - `CSV collection occasion file <_static/collection-occasions.csv>`_.
.. - `XLSX collection occasion worksheet <_static/pmhc-upload.xlsx>`_.

.. _k10p-format:

K10+ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file/worksheet is required to be uploaded each time in the hub/non hub
service provider or combined contexts.

Data elements for the K10+ collection occasion upload file/worksheet are defined
at :ref:`k10p-data-elements`.

Example K10+ data:

- To be provided when specification finalised

.. - `CSV K10+ file <_static/k10p.csv>`_.
.. - `XLSX K10+ worksheet <_static/pmhc-upload.xlsx>`_.

.. _k5-format:

K5 Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file/worksheet is required to be uploaded each time in the hub/non hub
service provider or combined contexts.

Data elements for the K5 collection occasion upload file/worksheet are defined
at :ref:`k5-data-elements`.

Example K5 data:

- To be provided when specification finalised

.. - `CSV K5 file <_static/k5.csv>`_.
.. - `XLSX K5 worksheet <_static/pmhc-upload.xlsx>`_.

.. _sdq-format:

SDQ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file/worksheet is required to be uploaded each time in the hub/non hub
service provider or combined contexts.

Data elements for the SDQ collection occasion upload file/worksheet are defined
at :ref:`sdq-data-elements`.

Example SDQ data:

- To be provided when specification finalised

.. - `CSV SDQ file <_static/sdq.csv>`_.
.. - `XLSX SDQ worksheet <_static/pmhc-upload.xlsx>`_.

.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file/worksheet is required for the first upload and if there
is a change in practitioners. It is optional otherwise.  There is no harm in
including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
:ref:`practitioner-data-elements`.

Example practitioner data:

- To be provided when specification finalised

.. - `CSV practitioner file <_static/practitioners.csv>`_.
.. - `XLSX practitioner worksheet <_static/pmhc-upload.xlsx>`_.

.. _organisation-format:

Organisation file format
^^^^^^^^^^^^^^^^^^^^^^^^
This file is for PHN use only. The organisation file/worksheet is optional. It can
be included to upload Provider Organisations in bulk or if there is a change in
Provider Organisation details. There is no harm in including it in every upload.

Data elements for the Provider Organisation upload file/worksheet are defined at
:ref:`provider-organisation-data-elements`.

Example organisation data:

- To be provided when specification finalised

.. - `CSV organisation file <_static/organisations.csv>`_.
.. - `XLSX organisation worksheet <_static/pmhc-upload.xlsx>`_.

.. _deleting-records:

Deleting records
^^^^^^^^^^^^^^^^

* Records of the following type can be deleted via upload:

  * Client
  * Episode
  * Service Contact
  * K10+
  * K5
  * SDQ
  * Practitioner

  Organisation records *cannot* be deleted via upload. Please email
  support@pmhc-mds.com if you need to delete an organisation.

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

- To be provided when specification finalised

.. - `XLSX file containing all the worksheets <_static/pmhc-upload-delete.xlsx>`_.
.. - `CSV delete client file <_static/clients-delete.csv>`_.
.. - `CSV delete episode file <_static/episodes-delete.csv>`_.
.. - `CSV delete service contact file <_static/service-contacts-delete.csv>`_.
.. - `CSV delete K10+ file <_static/k10p-delete.csv>`_.
.. - `CSV detete K5 file <_static/k5-delete.csv>`_.
.. - `CSV delete SDQ file <_static/sdq-delete.csv>`_.
.. - `CSV delete practitioner file <_static/practitioners-delete.csv>`_.

Frequently Asked Questions
--------------------------

Please also refer to `Uploading data <http://docs.pmhc-mds.com/en/v1/faqs/system/uploading.html#uploading-data-faqs>`_ for answers to frequently
asked questions about uploading data.
