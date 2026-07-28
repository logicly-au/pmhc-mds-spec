.. _data_spec_changelog:

Data Specification Change log
=============================

28/7/2026
---------

* :ref:`validation-rules`

  * :ref:`intake-current-validations`

    * Updated the validation rule for :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` so that
      the response '44: HeadtoHelp / HeadtoHealth' can be used by all organisations where 
      :ref:`dfn-date_client_contacted_intake` is earlier than 18 December 2025. After that date is is
      obsolete except for remaining Head to Health Clinics located in Victoria and Thornleigh, NSW.
      Previously this rule allowed the '44: HeadtoHelp / HeadtoHealth' response on data that had already
      been uploaded to the PMHC, but not on new data.

24/6/2026
---------

* :ref:`data-model`

  * Added PDF version of the data model diagram

4/5/2026 - 5.0.3
-----------------

* :ref:`validation-rules`

  * :ref:`episode-current-validations` and :ref:`intake-current-validations`

    * Updated validation rules for such that `!rchpsychology` and `!rchpsychiatry` tags must 
      must only be included in the :ref:`dfn-episode_tags` field
      where the :ref:`dfn-program_type` is '8: MMHC'.

12/3/2026 - 5.0.2
-----------------

* :ref:`changes-from-v4.1`

  * :ref:`data_mapping_twb3_pmhc5`

    * Added information about how Wayback records are identified and how :ref:`dfn-program_type` is mapped from
      The Way Back Version 3.0 to PMHC MDS Version 5.0

19/2/2026 - 5.0.1
-----------------

* :ref:`validation-rules`

  * :ref:`episode-current-validations` and :ref:`intake-current-validations`

    * Updated validation rules for :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` 
      and :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` to reflect that
      the HeadtoHelp / HeadtoHealth option can be used by remaining temporary Head to Health Clinics located in
      Victoria and Thornleigh, NSW.

  * :ref:`intake-current-validations`
  
    * Updated validation rule for :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` to reflect that
      for other values that are not otherwise stated, :ref:`dfn-referred_to_organisation_path` is not required

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`measure-data-elements`

      * :ref:`intake_measures`

        * :ref:`iar-dst-data-elements`

          * Updated to explain that :ref:`dfn-veteran` is not used in the calculation of the IAR-DST recommended
            level of care.


10/12/2025 - 5.0.0
------------------

* Draft status removed


04/12/2025
----------

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * :ref:`dfn-iar_dst_practitioner_reason_for_override` updated to allow multiple space-separated
      values to be supplied

* :ref:`validation-rules`

  * :ref:`iar-dst-current-validations`

    * Added validation rules for accomodating :ref:`dfn-iar_dst_practitioner_reason_for_override` having multiple values


28/11/2025
----------

* :ref:`changes-from-v4.1`

  * :ref:`data_migration_41_5`

    * Added migration for :ref:`dfn-veteran` and :ref:`dfn-iar_dst_practitioner_reason_for_override`

  * :ref:`data_mapping_twb3_pmhc5`

    * Added :ref:`dfn-recommendation_out_status` to data mapping table
    * Added mapping for :ref:`dfn-veteran`

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * Corrected fields for :ref:`ua-episode-data-elements` in data model diagrams



26/11/2025
----------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`dfn-slk` notes have been updated to explain how the different supported formats of the SLK are
      processed before being stored

21/11/2025
----------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`dfn-veteran` field has been updated to use the current Meteor specification

18/11/2025
----------

* :ref:`validation-rules`

  * :ref:`episode-current-validations`

      * Added validation rule for the use of the ``!uaooh`` tag

7/11/2025 - Draft 5.0.0
------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`dfn-program_type`

      * Renamed `2: Head to Health` response to `2: Head to Health Clinic`. 
        This response is only to be used by remaining temporary Head to 
        Health Clinics in NSW and Victoria. Please refer to 
        :ref:`dfn-program_type` for more information
      * Retired `3: AMHC` response
      * Added `9: Universal Aftercare` response

    * :ref:`dfn-iar_dst_practitioner_reason_for_override` field has been added to the :ref:`iar-dst-data-elements` table
    * :ref:`dfn-veteran` field has been added to both the :ref:`episode-data-elements` table and the :ref:`intake-data-elements` table
    * :ref:`ua-episode-data-elements` record added
    * :ref:`ua-recommendation-out-data-elements` record added
    * :ref:`ua-critical-incident-data-elements` record added
    * :ref:`ua-plan-data-elements` record added
    * :ref:`ua-needs-identification-data-elements` record added
    * :ref:`sidas-data-elements` record added
    * :ref:`who5-data-elements` record added

* :ref:`validation-rules`

  * :ref:`intake-current-validations`

    * Added validation rule for the `42: AMHC` response on the :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` field 
    * Added validation rule for the `44: HeadtoHelp / HeadtoHealth` response on the :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` field

  * :ref:`episode-current-validations`

      * Added validation rule for the `24: AMHC` response on the :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` field 
      * Added validation rule for the `22: HeadtoHelp / HeadtoHealth` response on the :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` field
      * Added validation rule for the `2: Head to Head to Health Clinic` response on the :ref:`dfn-program_type` field

  * :ref:`service-contact-current-validations`

    * Added validation rule for the `23: Head to Health program` response on the :ref:`dfn-funding_source` field

  * Added validation rules for the new :ref:`ua-episode-current-validations` record
  * Added validation rules for the new :ref:`ua-critical-incident-current-validations` record
  * Added validation rules for the new :ref:`ua-recommendation-out-current-validations` record
  * Added validation rules for the new :ref:`ua-plan-current-validations` record
  * Added validation rules for the new :ref:`ua-needs-identification-current-validations` record
  * Added validation rules for the new :ref:`sidas-current-validations` record
  * Added validation rules for the new :ref:`who-5-current-validations` record  
