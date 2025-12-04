.. _data_spec_changelog:

Data Specification Change log
=============================

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
