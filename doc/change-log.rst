.. _data_spec_changelog:

Data Specification Change log
=============================

??/7/2022 - 4.0.0-draft.4
-------------------------

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * Updated data model diagrams to make to make Episode Organisation Path and
      Episode Key the primary key for Intake Episode

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` is no longer required
    * :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` is no longer required


* :ref:`validation-rules`

  * Added validation for :ref:`dfn-organisation_type_referred_to_at_intake_conclusion`
  * Added validation for :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`

19/7/2022
---------

* Added :ref:`changes-from-v2`

* :ref:`upload_specification`

  * Removed Funding Source from Intake example upload files

18/7/2022 - 4.0.0-draft.3
-------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Removed Psychosocial Support from :ref:`dfn-principal_focus`

12/7/2022 - 4.0.0-draft.2
-------------------------

* :ref:`introduction`

  * Changed terminology to use **treatment organisation** instead of **hub**

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * Updated data model diagrams

  * :ref:`record-formats`

    * Renamed 'Intake - Funding Source' to :ref:`dfn-program_type` on :ref:`intake-data-elements`
    * Added :ref:`dfn-program_type` to :ref:`episode-data-elements`
    * Removed Continuity of Support from :ref:`episode-data-elements`

* :ref:`upload_specification`

  * Updated example upload files

* :ref:`validation-rules`

  * Added validation for Intake - Referral Date

1/12/2021 - 4.0.0-draft.1
-------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Added :ref:`dfn-suicide_referral_flag` to :ref:`intake-data-elements`
    * :ref:`dfn-referral_date` is required on :ref:`episode-data-elements`
    * Updated :ref:`dfn-funding_source` - Response codes designed to allow
      heirarchy and grouping of the funding sources

30/11/2021
----------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Updated :ref:`dfn-funding_source` - Updated response codes to start from 8
      to account for 7 being used in the Wayback specification.

25/11/2021 - Draft Version 4.0
------------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Added :ref:`collection-occasion-data-elements`
