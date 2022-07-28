.. _changes-from-v2:

Changes and Upgrading from Version 2
====================================

Version 4.0 introduces the recording of intake related activity (including
activity for the Head to Health and AMHC programmes) in the PMHC MDS as part
of the core  specification.

There are three contexts where data can be submitted using the version 4 specification:

* Intake teams
* Treatment organisations
* Combined Intake/Treatment organisations

Please refer to
:ref:`introduction-contexts` for further information about these contexts.

.. _data-specification-changes:

Data Specification Changes
--------------------------

A summary of the changes between the PMHC MDS Version 2.0 and
PMHC MDS Version 4.0 data specifications are as follows:

* Version 4.0 introduces the concept of an :ref:`key-concepts-intake`
* In order to support the Intake concept three records have been added:

  * For the Intake context - :ref:`intake-data-elements`, :ref:`iar-dst-data-elements`
  * For the Treatment context - :ref:`intake-episode-data-elements`
  * All three records are required in the combined Intake/Treatment context
* The data model has been upgraded to allow multiple practitioners to be
  associated with a :ref:`service-contact-data-elements`. To support this an
  extra record, :ref:`service-contact-practitioner-data-elements` has been
  introduced.
* The following new fields will be added to the Episode record:

  * :ref:`dfn-program_type`
  * :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`


* The following field has been retired from the Episode record:

  * Continuity of Service

* The `8: Psychosocial Support` response has been removed from the
  :ref:`dfn-principal_focus`. Psychosocial intakes and episodes should now be
  reported using the `Psychosocial` response on :ref:`dfn-program_type` on the
  Intake and Episode.


* The following new fields will be added to the Service Contact record:

  * :ref:`dfn-service_contact_start_time`
  * :ref:`dfn-funding_source`


* Version 4 uses the same collection occasion and measures model as the
  Version 3 HeadtoHelp and Wayback extensions.

  Collection occasion and measures data has been separated into separate
  collection occasion and measures records and upload files/worksheets so
  that multiple measures can be collected at a single collection occasion.
  The Collection Occasion record retains the Episode Key, Date and Reason for
  Collection. Separate records exist for the K10+, K5 and SDQ measures.
  Each of these measures records contain the Collection Occasion Key, a
  Measure Key, and item/subscale/total scores for the particular measure.

  In order to support both Version 2 and Version 3 data specifications, the
  PMHC MDS has been converting data uploaded using the Version 2 upload format
  to be stored in the Version 3 format. In order to do this, the PMHC MDS
  has been creating Measure Keys for any Version 2 supplied data. These look like
  random uuid strings and can be viewed through the Data Entry interface or
  by downloading the data in a non Version 2 format.

  *As the PMHC MDS has been auto creating Measure Keys, in order to upgrade
  from Version 2 uploads to Version 4 uploads some work will be involved to
  ensure that, for existing data, the Measure Keys supplied in the Version 4
  upload, matches the Measure Keys already stored in the PMHC MDS. Please
  refer to* :ref:`steps-required-to-upgrade` *below for an explanation of the
  different options available.*


.. _upload-specification-changes:

Upload Specification Changes
----------------------------

The Version 2.0 specification allowed the following worksheets and columns:

.. figure:: figures/v2.0.0-upload-columns.svg
   :alt: PMHC MDS Version 2.0.0 upload columns

   PMHC MDS Version 2.0.0 upload columns

The Version 4 specification allows for different files/worksheets to be uploaded depending on
whether the organisation is an Intake team, Treatment Service Provider or
a combined Intake/Treatment Service Provider. Please refer to
:ref:`introduction-contexts` for further information about these contexts.

The following table shows the Version 4.0 combined Intake/Treatment Service
Provider specification and notes the differences between the Version 2
specification:

.. figure:: figures/v4.0.0-upload-columns.svg
   :alt: PMHC MDS Version 4.0.0 combined context upload columns

   PMHC MDS Version 4.0.0 combined context upload columns

.. _steps-required-to-upgrade:

Steps required to upgrade to Version 4 uploads
----------------------------------------------

1. Upgrade your Client Management System to export files in the new Version 4 format
2. As explained above, in order to support both Version 2 and Version 3 uploads
   the PMHC MDS has been auto creating measure keys where data is supplied in
   the Version 2 format. Also, during the migration to Version 4,
   Service Contact Practitioner Keys will be auto generated.

   In order to update existing measure data and Service Contact Practitioner data, when
   uploading in Version 4, the existing measure key or service contact practitioner
   key will need to be supplied, otherwise a separate measure or service
   contact practitioner record will be created.

   Where data has been uploaded using a previous specification organisations will
   need to do one of the following:

  * Download their data from the PMHC MDS and sync their local
    measure/service contact practitioner keys
    with the keys that were auto created by the PMHC MDS
  * Download their data from the PMHC MDS, delete the existing
    measures/service contact practitioner records, re-upload with new keys
  * Download their data from the PMHC MDS, create a mapping document containing
    the measure/service contact practitioner key as stored in the PMHC MDS and the local key.
    Email support@pmhc-mds.com and request that the keys are updated
    according to the mapping.
