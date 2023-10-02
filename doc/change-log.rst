.. _data_spec_changelog:

Data Specification Change log
=============================

2/10/2023
---------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Updated :ref:`dfn-service_contact_participants` that code 4 should only be used if there is no client/family support network involved in the session

3/5/2023
--------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Confirmed that where there is a linked intake and treatment, both the Intake and Episode records
      must use the same:

      * :ref:`dfn-referral_date`
      * :ref:`dfn-referrer_profession`
      * :ref:`dfn-referrer_organisation_type`
      * :ref:`dfn-suicide_referral_flag`

      ie. the intake service is NOT the referrer for an episode record.

    * Updated the :ref:`dfn-k10p_score` scoring algorithm in line with https://pmhc-mds.com/communications/#/2021/08/30/notification-of-planned-K10-scoring-change/

22/12/2022
----------

* :ref:`changes-from-v2`

  * :ref:`upload-specification-changes`

    * Corrections to `Fig. 2.1 PMHC MDS Version 2.0.0 upload columns`:

      * Added :ref:`dfn-service_contact_no_show`
      * Added :ref:`dfn-iar_dst_domain_3`
      * Corrected duration from duraction

24/10/2022
----------

* :ref:`data-model-and-specifications`

  * :ref:`key-concepts`

    * Added :ref:`concluded-intake`

* :ref:`record-formats`

  * Added Notes to :ref:`dfn-organisation_abn` pointing to documentation of the algorithm used to validate an ABN.

* :ref:`validation-rules`

  * Updated Intake validation rules to change wording from 'open intake' to 'intake that is not concluded'
  * Added a definition of an 'intake that is not concluded'

18/10/2022
----------

* :ref:`data-model-and-specifications`

  * :ref:`data-specifications-download`

    * Added information about the format of the data specification files that are available for download.

27/9/2022
---------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * An Intake and IAR-DST is only required for certain Program Types. Updated
      :ref:`intake-data-elements` and :ref:`intake_measures` to specify which
      Program Types require an Intake and IAR-DST.

7/9/2022
--------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Corrected `Bushfire Recovery 2020` from `Bushfire Recovery 20` in :ref:`dfn-program_type`.

5/9/2022
--------

* :ref:`changes-from-v2`

  * Corrected typo for Continuity of Support

26/8/2022
---------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Corrected some typos in :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`
      and :ref:`dfn-referrer_organisation_type`

12/8/2022 - 4.0.1
-----------------

* :ref:`validation-rules`

  * Removed the validation on Intakes and Episodes enforcing that the :ref:`dfn-referral_date`
    must not be before :ref:`dfn-organisation_start_date`

8/8/2022
--------

* :ref:`changes-from-v2`

  * Added :ref:`mapping-refer-out-org-types-to-intakes`

5/8/2022
--------

* :ref:`upload_specification`

  * Updated example upload files

* :ref:`reserved-tags`

  * Updated guidance for use of the `!covid19` tag

29/7/2022 - 4.0.0
-----------------

* :ref:`changes-from-v2`

  * Added further information to :ref:`steps-required-to-upgrade`

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * Updated data model diagrams to make Episode Organisation Path and
      Episode Key the primary key for Intake Episode

  * :ref:`record-formats`

    * :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` is no longer required
    * :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` is no longer required

    * Finalised domain of :ref:`dfn-program_type`
    * Finalised domain of :ref:`dfn-funding_source`
    * Added notes to :ref:`dfn-service_contact_start_time` about use of an
      end of day flag for service contacts uploaded in specifications prior to Version 4
    * Added notes to :ref:`dfn-referral_date` about use of a missing value
      for episodes uploaded in specifications prior to Version 4


* :ref:`validation-rules`

  * Added validation for :ref:`dfn-organisation_type_referred_to_at_intake_conclusion`
  * Added validation for :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`
  * Added validation for response '27: Way Back Support Service' for :ref:`dfn-funding_source`
  * Added validation for :ref:`dfn-service_contact_start_time` about use of an
    end of day flag for service contacts uploaded in specifications prior to Version 4
  * Added validation for :ref:`dfn-referral_date` about use of a missing value
    for episodes uploaded in specifications prior to Version 4

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
