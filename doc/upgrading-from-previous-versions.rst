.. _changes-from-v4.1:

Changes and Upgrading from Version 4.1
======================================

Version 5.0 includes The Way Back as part of the default specification and rebrands it to Universal Aftercare.
Version 5.0 also completes the rebranding of AMHC/HeadtoHealth to Medicare Mental Health Centre (MMHC) by
retiring the AMHC Program Type and renaming the Head to Health Program Type to Head To Health Clinic. 

.. _data-specification-changes:

Data Specification Changes
--------------------------

A summary of the changes between the PMHC MDS Version 4.1 and
PMHC MDS Version 5.0 data specifications are as follows:

* The following changes have been made to support Universal Aftercare:

  - In order to support Universal Aftercare a `9: Universal Aftercare` response has been added to the
    :ref:`dfn-program_type` field on both the Intake and Episode tables.
  - Seven entirely new tables have been added. These tables only need to be submitted where Episodes
    using the new `9: Universal Aftercare` Program Type are included.

    * :ref:`ua-episode-data-elements`
    * :ref:`ua-recommendation-out-data-elements`
    * :ref:`ua-critical-incident-data-elements`
    * :ref:`ua-plan-data-elements`
    * :ref:`ua-needs-identification-data-elements`
    * :ref:`sidas-data-elements`
    * :ref:`who5-data-elements`

* AMHC and Head to Health have been rebranded as Medicare Mental Health Centres (MMHC). Version 4.1.1 introduced the
  `8: MMHC` response for :ref:`dfn-program_type`. The following changes have been applied to the :ref:`dfn-program_type` field on both
  the Intake and Episode tables:

  - `2: Head to Health` renamed to `2: Head to Health Clinic`. This response 
    is only to be used by remaining temporary Head to Health Clinics in New 
    South Wales and Victoria. Please refer to :ref:`dfn-program_type` for more information.
  - `3: AMHC` has been retired. An error will be returned if this response is used.

* A new :ref:`dfn-veteran` field has been added to the Intake and Episode tables. This field was included in The Way Back specification. 
  There a new IAR-DST variant has been developed for Veterans. A Veterans field has been included on the Intake and Episode tables instead of 
  the new UA Episode table so that it can be used for monitoring both the IAR-DST and Universal Aftercare.

* A new :ref:`dfn-iar_dst_practitioner_reason_for_override` has been added to the IAR-DST table.

.. _upload-specification-changes:

Upload Specification Changes
----------------------------

The Version 4.1 and 5.0 specifications both allow for different files/worksheets to be uploaded depending on
whether the organisation is an Intake team, Treatment Service Provider or
a combined Intake/Treatment Service Provider. Please refer to
:ref:`introduction-contexts` for further information about these contexts.

The following table shows the Version 5.0 combined Intake/Treatment Service
Provider specification and notes the differences between the Version 4.1
specification:

.. figure:: figures/v5.0.0-upload-columns.svg
   :alt: PMHC MDS Version 5.0.0 combined context upload columns

   PMHC MDS Version 5.0.0 combined context upload columns

.. note::
  The above table is in the SVG format and can be enlarged 
  or zoomed by opening in a new tab or window or by downloading it.

.. _data_migration_41_5:

Data migration between PMHC MDS Version 4.1 and PMHC MDS Version 5.0
--------------------------------------------------------------------

During the migration to PMHC Version 5.0 and when PMHC MDS Version 4.1 specifcation files are
uploaded during the period when both specifications 
are accepted by the PMHC MDS, the existing following fields will be migrated as follows:

* Existing episodes with :ref:`dfn-program_type` `3: AMHC` will be migrated to :ref:`dfn-program_type` `8: MMHC`
* Existing episodes with :ref:`dfn-program_type` `2: Head to Health` will be migrated to :ref:`dfn-program_type` `8: MMHC`, excluding:

  * Former Pop-Up clinics and Head to Health clinics in New South Wales and Australian Capital Territory
  * Continuing Head to Health clinics in New South Wales 
  * Existing Pop-Up clinics and Head to Health clinics in Victoria except for the Geelong MMHC

The following new fields will be populated as follows: 

* :ref:`dfn-veteran` will be set to `9: Not stated/inadequately described` - Please see :ref:`data_mapping_twb3_pmhc5` for details on how :ref:`dfn-veteran` will be
  mapped for data submitted using The Wayback Version 3.0 specification.
* :ref:`dfn-iar_dst_practitioner_reason_for_override` will be set to `9: Missing / Not specified`

.. _data_mapping_twb3_pmhc5:

Data mapping between The Way Back Version 3.0 and PMHC MDS Version 5.0
----------------------------------------------------------------------

During the migration to PMHC MDS Version 5.0 and when The Way Back Version 3.0 specifcation files are
uploaded during the period when both The Way Back Version 3.0 and Version 5.0 specification files
are accepted by the PMHC MDS, The Way Back records will be mapped as follows:

+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+--------------------------------------+--------------------------------------+
| The Way Back Record Version 3.0 Record | The Way Back Version 3.0 Field                                  | PMHC MDS Version 5.0 Record           | PMHC MDS Version 5.0 Field                                   | The Way Back Version 3.0 Response    | PMHC MDS Version 5.0 Response        |
+========================================+=================================================================+=======================================+==============================================================+======================================+======================================+
| TWB Episode                            | Organisation Path                                               | UA Episode                            | :ref:`dfn-organisation_path`                                 | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | Episode Key                                                     | UA Episode                            | :ref:`dfn-episode_key`                                       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+--------------------------------------+--------------------------------------+
| TWB Episode                            | TWB Episode - Veteran                                           | Intake                                | :ref:`dfn-veteran`                                           | N/A                                  | 9: Not stated/inadequately described |
|                                        |                                                                 +---------------------------------------+--------------------------------------------------------------+--------------------------------------+--------------------------------------+
|                                        |                                                                 | Episode                               | :ref:`dfn-veteran`                                           | 1: Identifies as a veteran           | S: Identifies as a veteran           |
|                                        |                                                                 |                                       |                                                              +--------------------------------------+--------------------------------------+
|                                        |                                                                 |                                       |                                                              | 2: Does not identify as a veteran    | 1: Has never served                  |
|                                        |                                                                 |                                       |                                                              +--------------------------------------+--------------------------------------+
|                                        |                                                                 |                                       |                                                              | 9: Not stated/Inadequately described | 9: Not stated/inadequately described |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+--------------------------------------+--------------------------------------+
| TWB Episode                            | TWB Episode - Sexual Orientation                                | UA Episode                            | :ref:`dfn-sexual_orientation`                                | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Transgender Status                                | UA Episode                            | :ref:`dfn-transgender_status`                                | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Intersex Status                                   | UA Episode                            | :ref:`dfn-intersex_status`                                   | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Eligibility Type                                  | UA Episode                            | :ref:`dfn-eligibility_type`                                  | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - External Evaluator Contact Consent                | UA Episode                            | :ref:`dfn-external_evaluator_contact_consent`                | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Primary Nominated Professional                    | UA Episode                            | :ref:`dfn-primary_nominated_professional`                    | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Primary Nominated Professional Consent Date       | UA Episode                            | :ref:`dfn-primary_nominated_professional_consent_date`       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Primary Nominated Professional Contact Entry Date | UA Episode                            | :ref:`dfn-primary_nominated_professional_contact_entry_date` | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Primary Nominated Professional Contact Exit Date  | UA Episode                            | :ref:`dfn-primary_nominated_professional_contact_exit_date`  | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Previous suicide attempts                         | UA Episode                            | :ref:`dfn-previous_suicide_attempts`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Episode                            | TWB Episode - Method of suicide attempt                         | UA Episode                            | :ref:`dfn-method_of_suicide_attempt`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Critical Incident                  | Organisation Path                                               | UA Critical Incident                  | :ref:`dfn-organisation_path`                                 | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Critical Incident                  | TWB Critical Incident Key                                       | UA Critical Incident                  | :ref:`dfn-ua_critical_incident_key`                          | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Critical Incident                  | Episode Key                                                     | UA Critical Incident                  | :ref:`dfn-episode_key`                                       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Critical Incident                  | TWB Critical Incident - Type                                    | UA Critical Incident                  | :ref:`dfn-critical_incident_type`                            | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Critical Incident                  | TWB Critical Incident - Date                                    | UA Critical Incident                  | :ref:`dfn-critical_incident_date`                            | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Recommendation Out                 | Organisation Path                                               | UA Recommendation Out                 | :ref:`dfn-organisation_path`                                 | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Recommendation Out                 | TWB Recommendation Out Key                                      | UA Recommendation Out                 | :ref:`dfn-ua_recommendation_out_key`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Recommendation Out                 | Episode Key                                                     | UA Recommendation Out                 | :ref:`dfn-episode_key`                                       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Recommendation Out                 | TWB Recommendation Out - Provider Type                          | UA Recommendation Out                 | :ref:`dfn-recommendation_out_provider_type`                  | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Recommendation Out                 | TWB Recommendation Out - Recommendation Out Status              | UA Recommendation Out                 | :ref:`dfn-recommendation_out_status`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Plan                               | Organisation Path                                               | UA Plan                               | :ref:`dfn-organisation_path`                                 |  Responses directly translate                                               |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Plan                               | TWB Plan Key                                                    | UA Plan                               | :ref:`dfn-ua_plan_key`                                       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Plan                               | Collection Occasion Key                                         | UA Plan                               | :ref:`dfn-collection_occasion_key`                           | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Plan                               | TWB Plan - Plan Type                                            | UA Plan                               | :ref:`dfn-plan_type`                                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB Plan                               | TWB Plan - Tags                                                 | UA Plan                               | :ref:`dfn-plan_tags`                                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB NI                                 | Organisation Path                                               | UA Needs Identification               | :ref:`dfn-organisation_path`                                 | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB NI                                 | TWB NI Key                                                      | UA Needs Identification               | :ref:`dfn-ua_needs_identification_key`                       | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB NI                                 | Collection Occasion Key                                         | UA Needs Identification               | :ref:`dfn-collection_occasion_key`                           | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB NI                                 | TWB NI - Type                                                   | UA Needs Identification               | :ref:`dfn-needs_identification_type`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+
| TWB NI                                 | TWB NI - Tags                                                   | UA Needs Identification               | :ref:`dfn-needs_identification_tags`                         | Responses directly translate                                                |
+----------------------------------------+-----------------------------------------------------------------+---------------------------------------+--------------------------------------------------------------+-----------------------------------------------------------------------------+

.. _steps-required-to-upgrade:

Steps required to upgrade to Version 5.0 uploads
------------------------------------------------

1. Upgrade your Client Management System to export files in the new Version 5.0 format by addressing the changes described above.
