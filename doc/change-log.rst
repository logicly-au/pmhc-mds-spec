.. _data_spec_changelog:

Data Specification Change log
=============================

16/11/2021
----------

* :ref:`data-model-and-specifications`

  * :ref:`dfn-k10p_score`

    * Updated the documentation to reflect the new scoring formula that has
      been used since the the 1st of November 2021.

* :ref:`validation-rules`

  * :ref:`K10+ Current Validations <k10p-current-validations>`

    * Added reference to the Total Score scoring formula

9/9/2021
--------

* :ref:`data-model-and-specifications`

  * :ref:`dfn-measure_date` - Updated the :ref:`dfn-measure_date` validation so that it must not be
    more than 7 days after :ref:`dfn-episode_end_date`

* :ref:`validation-rules`

  * :ref:`K10+ Current Validations <k10p-current-validations>`

    * Updated the :ref:`dfn-measure_date` validation so that it must not be
      more than 7 days after :ref:`dfn-episode_end_date`

  * :ref:`K5 Current Validations <k5-current-validations>`

    * Updated the :ref:`dfn-measure_date` validation so that it must not be
      more than 7 days after :ref:`dfn-episode_end_date`

  * :ref:`SDQ Current Validations <sdq-current-validations>`

    * Updated the :ref:`dfn-measure_date` validation so that it must not be
      more than 7 days after :ref:`dfn-episode_end_date`

3/8/2021
--------

* :ref:`reporting_arrangements`

  * :ref:`reporting_inputs`

    * Added 2021 PMHC Outcome Measure Standard Deviations

12/5/2021
---------

* :ref:`data-model-and-specifications`

  * :ref:`dfn-service_contact_modality` - Updated and expanded the notes for
    each of the responses

25/2/2021
---------

* :ref:`upload_specification`

  * Renamed File Types to :ref:`file-requirements`

  * Added :ref:`file-size`

12/2/2021
---------

* :ref:`key-concepts`

  * :ref:`key-concepts-service-contact`

    * Added :ref:`active-client`

    * Added :ref:`active-episode`

18/11/2020
----------

* :ref:`reporting_arrangements`

  * Added :ref:`reporting_inputs`

23/9/2020
---------

* :ref:`data-model-and-specifications`

    * :ref:`dfn-organisation_path` - Updated reference to `Parent Organisation`
      to `Commissioning Organisation`

15/9/2020
---------

* :ref:`reserved-tags`

  * Added :ref:`covid19`

18/8/2020
---------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Added :ref:`collection-occasion-tags`

11/8/2020
---------

* :ref:`identifier_management`

  * Added section :ref:`collection_occasion_keys`

* :ref:`data-model-and-specifications`

  * :ref:`data-model`

    * Updated the data model diagram to more accurately reflect the model between
      collection occasions and measures

  * :ref:`record-formats`

    * :ref:`dfn-collection_occasion_key`



23/1/2020
---------

* :ref:`reserved-tags`

    * Added :ref:`br20`

9/9/2019
--------

* :ref:`key-concepts`

  * :ref:`key-concepts-service-contact`

    * Added :ref:`attended-contact`

14/8/2019
---------

* :ref:`validation-rules`

  * :ref:`Service Contact Current Validations <service-contact-current-validations>`

    * Added individual notes where '0: No contact took place' is selected in any field,
      that :ref:`dfn-service_contact_no_show` must be '1: Yes'

21/6/2019
---------

* :ref:`validation-rules`

  * Moved SDQ Future Validations to the :ref:`SDQ Current Validations <sdq-current-validations>`.

    * Subscale and total difficulties scores are now calculated/validated against
      item scores provided, as per :ref:`Scoring the SDQ <scoring-the-sdq>`.


22/3/2019 - Version 2.0
-----------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * Added :ref:`metadata-data-elements`

    * :ref:`provider-organisation-data-elements`

      * Removed Provider Organisation - Organisation Status

      * Added :ref:`dfn-organisation_start_date`

      * Added :ref:`dfn-organisation_end_date`

    * :ref:`episode-data-elements`

      * Added :ref:`dfn-continuity_of_support`

* :ref:`upload_specification`

  * Updated :ref:`file-format` to remove the requirement that the first row
    of each file/worksheet must include the columns Version,1.0. The first row
    must now contain the column headings as defined for each file type.

  * Added :ref:`metadata-format`
