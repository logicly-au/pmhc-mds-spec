.. _validation-rules:

Validation Rules
================

This document defines validation rules between items and record types.
The domain of individual items is defined in :ref:`record-formats`.

.. _current-validations:

Current Validations
-------------------

.. _key-current-validations:

Keys
~~~~

The following rules apply to the key fields in all records:

  1. All key fields are case sensitive
  2. All key fields must be valid unicode characters

.. _practitioner-current-validations:

Practitioner
~~~~~~~~~~~~

  1. Refer to :ref:`key-current-validations` for Practitioner Key validations
  2. :ref:`dfn-atsi_cultural_training` must only be set to
     '3 - Not required' where :ref:`dfn-practitioner_atsi_status` is one of

     * '1: Aboriginal but not Torres Strait Islander origin'
     * '2: Torres Strait Islander but not Aboriginal origin'
     * '3: Both Aboriginal and Torres Strait Islander origin'

     or

     The organisation to which the practitioner belongs has
     :ref:`dfn-organisation_type` set to '8: Aboriginal Health/Medical Service'
  3. :ref:`dfn-practitioner_year_of_birth` must not be before 1 January 1900 and must not be in the future

.. _client-current-validations:

Client
~~~~~~

  1. Refer to :ref:`key-current-validations` for Client Key validations
  2. :ref:`dfn-date_of_birth` must not be before 1 January 1900 and must not be in the future

.. _intake-current-validations:

Intake
~~~~~~

  #. Refer to :ref:`key-current-validations` for Intake Key validations
  #. The :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` must not be before the :ref:`dfn-date_client_contacted_intake`
  #. :ref:`dfn-referrer_organisation_type` must be set to
     '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
     '98: N/A - Self referral'
  #. A maximum of one intake shall be open per client
  #. The :ref:`dfn-referral_date`

     * must not be before 1 January 2020
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. The :ref:`dfn-date_client_contacted_intake`

     * must not be before 1 January 2020
     * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
     * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
     * and must not be in the future

  #. The :ref:`dfn-date_referred_to_other_service_at_intake_conclusion`

     * must not be before 1 January 2020
     * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
     * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
     * and must not be in the future

  #. If a :ref:`dfn-referred_to_organisation_path` is specified, that
     organisation must be an existing organisation within the PMHC MDS

  #. :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` will be validated as follows:

     #. If :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` is one of `97: No Referral` or `99: Not stated/Inadequately described`, then no other responses can be selected

     #. If :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` is blank or `97: No Referral`, then:

         * :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` must be blank
         * :ref:`dfn-referred_to_organisation_path` must be blank

     #. If :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` contains `98: Other`, then:

         * :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` must NOT be blank

     #. If :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` is `99: Not stated/Inadequately described`, then:

         * :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` must NOT be blank
         * :ref:`dfn-referred_to_organisation_path` must be blank

     #. Any other values for :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` require both

         * :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` and
         * :ref:`dfn-referred_to_organisation_path`


.. _iar-dst-current-validations:

IAR-DST
~~~~~~~

  1. Refer to :ref:`key-current-validations` for Measure Key validations
  2. :ref:`dfn-intake_key` must be an existing Intake within the PMHC MDS
  3. Both all 8 domains and the level of care must be provided
  4. The level of care must be consistent with the 8 domain scores provided

.. _intake-episode-current-validations:

Intake - Episode
~~~~~~~~~~~~~~~~

  1. If a :ref:`dfn-intake_organisation_path` is specified, that organisation must
     be an existing organisation within the PMHC MDS
  2. If an :ref:`dfn-intake_key` is specified, a :ref:`dfn-intake_organisation_path`
     must also be specified
  3. If an :ref:`dfn-episode_organisation_path` is specified, that organisation must
     be an existing organisation within the PMHC MDS
  4. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS

.. _episode-current-validations:

Episode
~~~~~~~

  #. Refer to :ref:`key-current-validations` for Episode Key validations
  #. The :ref:`dfn-episode_end_date` must not be before the :ref:`dfn-referral_date`
  #. :ref:`dfn-referrer_organisation_type` must be set to
     '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
     '98: N/A - Self referral'
  #. A maximum of one episode shall be open per client
  #. **Open episodes** are those with :ref:`dfn-episode_completion_status` recorded
     as open (Response item 0).

     Open episodes must NOT have a response to both :ref:`dfn-episode_end_date`
     and :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`.

  #. **Closed episodes** are those with :ref:`dfn-episode_completion_status`
     recorded using one of the 'Episode closed' responses (Response items 1-6).

     Closed episodes must have a response to both :ref:`dfn-episode_end_date`
     and :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`.

  #. On :ref:`dfn-principal_diagnosis` and :ref:`dfn-additional_diagnosis`
     the values:

     * '100: Anxiety disorders (ATAPS)'
     * '200: Affective (Mood) disorders (ATAPS)'
     * '300: Substance use disorders (ATAPS)'
     * '400: Psychotic disorders (ATAPS)'

     must only used where data has been migrated from ATAPS. The above
     responses must only be used under the following conditions:

     * The :ref:`dfn-referral_date` was before 1 July 2017
     * The :ref:`dfn-episode_tags` field must contain the ``!ATAPS`` flag
  #. The '4: Complex care package' response for :ref:`dfn-principal_focus` must
     only be used by selected PHN Lead Sites
  #. The ``!ATAPS`` tag must only be included in the :ref:`dfn-episode_tags` field
     where the :ref:`dfn-referral_date` was before 1 July 2017
  #. The :ref:`dfn-episode_end_date`

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. The :ref:`dfn-referral_date`

     * must not be before 1 January 2014
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  11. :ref:`dfn-referral_date` value of '09099999' cannot be used on new records.
  12. Existing records already containing a :ref:`dfn-referral_date` that is
      not '09099999' may not be updated to '09099999'.

.. _service-contact-current-validations:

Service Contact
~~~~~~~~~~~~~~~

  1. Refer to :ref:`key-current-validations` for Service Contact Key validations
  2.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the
      :ref:`dfn-episode_completion_status` must be recorded using one of the
      'Episode closed' responses (Response items 1-6)
  3.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the date of the
      :ref:`dfn-service_contact_final` must be recorded as the Episode End Date
  4.  Where an :ref:`dfn-episode_end_date` has been recorded, a later
      :ref:`dfn-service_contact_date` must not be added
  5.  If :ref:`dfn-service_contact_type` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  6.  If :ref:`dfn-service_contact_duration` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  7.  If :ref:`dfn-service_contact_modality` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  8.  If :ref:`dfn-service_contact_modality` is not '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must be 9999
  9.  If :ref:`dfn-service_contact_modality` is '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must not be 9999
  10. If :ref:`dfn-service_contact_modality` is '1: Face to Face',
      :ref:`dfn-service_contact_venue` must not be
      '98: Not applicable (Service Contact Modality is not face to face)'
  11. On :ref:`dfn-service_contact_type` the value '98: ATAPS' must only be
      used where data has been migrated from ATAPS. The above
      response must only be used under the following conditions:

      * The :ref:`dfn-service_contact_date` was before 30 June 2018
      * The :ref:`dfn-service_contact_tags` field must contain the ``!ATAPS`` flag
  12. If :ref:`dfn-service_contact_participants` is '1: Individual client'
      :ref:`dfn-service_contact_participation_indicator` must be '1: Yes'
  13. The ``!ATAPS`` tag must only be included in the :ref:`dfn-service_contact_tags`
      field where the :ref:`dfn-service_contact_date` was before 30 June 2018
  14. The :ref:`dfn-service_contact_date`

      * must not be before 1 January 2016
      * and must not be before :ref:`dfn-organisation_start_date`
      * and must not be after :ref:`dfn-organisation_end_date`
      * and must not be in the future

  15. :ref:`dfn-service_contact_start_time` value of '24:00' cannot be used on new records.
  16. Existing records already containing a :ref:`dfn-service_contact_start_time` that is not '24:00' may not be updated to '24:00'.
  17. On :ref:`dfn-funding_source` the value '27: Way Back Support Service' must
      only be used in conjunction with the Wayback Extension.


.. _service-contact-practitioner-current-validations:

Service Contact Practitioner
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  1. Refer to :ref:`key-current-validations` for Service Contact Practitioner Key validations
  2. :ref:`dfn-service_contact_key` must be an existing PMHC service contact
     within the PMHC MDS
  3. :ref:`dfn-practitioner_key` must be an existing PMHC practitioner
     within the PMHC MDS
  4. One, and only one, Service Contact Practitioner per service contact must be
     flagged as the Primary Practitioner

.. _collection-occasion-current-validations:

Collection Occasion
~~~~~~~~~~~~~~~~~~~

  1. Refer to :ref:`key-current-validations` for Collection Occasion Key validations
  2. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS
  3. The :ref:`dfn-collection_occasion_date`

    * must not be before 1 January 2016
    * and must not be before `Episode - Referral Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-referral-date>`_
    * and must not be before `Provider Organisation - Start Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-start-date>`_
    * and must not be more than 7 days after `Episode - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#episode-end-date>`_
    * and must not be after `Provider Organisation - End Date <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#provider-organisation-end-date>`_
    * and must not be in the future

.. _k10p-current-validations:

K10+
~~~~

  1. Refer to :ref:`key-current-validations` for Measure Key validations
  2. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS
  3. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K10+ <dfn-k10p_score>`)

.. _k5-current-validations:

K5
~~

  1. Refer to :ref:`key-current-validations` for Measure Key validations
  2. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  3. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K5 <dfn-k5_score>`).

.. _sdq-current-validations:

SDQ
~~~

  1. Refer to :ref:`key-current-validations` for Measure Key validations
  2. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  3. Use the table at :ref:`SDQ Data Elements <sdq-data-elements>` to validate the items that
     are used in each version of the SDQ
  4. If both item scores and subscales are specified, the sum of the items
     must agree with the subscales score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)
  5. If both subscales and total score are specified, the sum of the subscales
     must agree with the total score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)

.. _organisation-current-validations:

Organisation
~~~~~~~~~~~~

  1. Refer to :ref:`key-current-validations` for Provider Organisation Key validations
  2. The :ref:`dfn-organisation_start_date`

     * must not be before 1 January 2014
       or before a commissioning organisation's start date
     * and must not be after the earliest :ref:`dfn-date_client_contacted_intake`
     * and must not be after the earliest :ref:`dfn-date_referred_to_other_service_at_intake_conclusion`
     * and must not be after the earliest :ref:`dfn-referral_date`
     * and must not be after the earliest :ref:`dfn-service_contact_date`
     * and must not be after the earliest :ref:`dfn-collection_occasion_date`
     * and must not be in the future

  3. The :ref:`dfn-organisation_end_date`

     * must not be before 1 January 2014
       or after a commissioning organisation's end date
     * and must not be before the latest :ref:`dfn-date_client_contacted_intake`
     * and must not be before the latest :ref:`dfn-date_referred_to_other_service_at_intake_conclusion`
     * and must not be before the latest :ref:`dfn-referral_date`
     * and must not be before the latest :ref:`dfn-episode_end_date`
     * and must not be before the latest :ref:`dfn-service_contact_date`
     * and must not be before the latest :ref:`dfn-collection_occasion_date`
     * can be in the future

 .. _future-validations:

 .. Future Validations
 .. ------------------
