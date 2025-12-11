.. _validation-rules:

Validation Rules
================

This document defines validation rules between items and record types.
The domain of individual items is defined in :ref:`record-formats`.

The use of key words (must, should, may etc.) for requirement levels are defined in
`RFC 2119 <https://datatracker.ietf.org/doc/html/rfc2119>`_.

.. _current-validations:

Current Validations
-------------------

.. _key-current-validations:

Keys
~~~~

The following rules apply to the key fields in all records:

  #. All key fields are case sensitive
  #. All key fields must be valid unicode characters

.. _practitioner-current-validations:

Practitioner
~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Practitioner Key validations
  #. :ref:`dfn-atsi_cultural_training` must only be set to
     '3 - Not required' where :ref:`dfn-practitioner_atsi_status` is one of

     * '1: Aboriginal but not Torres Strait Islander origin'
     * '2: Torres Strait Islander but not Aboriginal origin'
     * '3: Both Aboriginal and Torres Strait Islander origin'

     or

     The organisation to which the practitioner belongs has
     :ref:`dfn-organisation_type` set to '8: Aboriginal Health/Medical Service'
  #. :ref:`dfn-practitioner_year_of_birth` must not be before 1 January 1900 and must not be in the future

.. _client-current-validations:

Client
~~~~~~

  #. Refer to :ref:`key-current-validations` for Client Key validations
  #. :ref:`dfn-date_of_birth` must not be before 1 January 1900 and must not be in the future

.. _intake-current-validations:

Intake
~~~~~~

  #. Refer to :ref:`key-current-validations` for Intake Key validations
  #. The :ref:`dfn-date_referred_to_other_service_at_intake_conclusion` must not be before the :ref:`dfn-date_client_contacted_intake`
  #. :ref:`dfn-referrer_organisation_type` must be set to
     '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
     '98: N/A - Self referral'
  #. A maximum of one intake that is NOT :ref:`concluded <concluded-intake>` shall be allowed per client
  #. The :ref:`dfn-referral_date`

     * must not be before 1 January 2020
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

  #. On :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` the value '42: AMHC' must only be used on existing records. It is not allowed on new records.
  #. On :ref:`dfn-organisation_type_referred_to_at_intake_conclusion` the value '44: HeadtoHelp / HeadtoHealth' must only be used on existing records. It is not allowed on new records.


.. _iar-dst-current-validations:

IAR-DST
~~~~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-intake_key` must be an existing Intake within the PMHC MDS
  #. Both all 8 domains and the level of care must be provided
  #. The :ref:`dfn-iar_dst_recommended_level_of_care` must be consistent with the 8 domain scores provided
  #. :ref:`dfn-iar_dst_practitioner_reason_for_override` will be validated as follows:

     #. :ref:`dfn-iar_dst_practitioner_reason_for_override` must be supplied when the :ref:`dfn-iar_dst_practitioner_level_of_care` differs from 
        the :ref:`dfn-iar_dst_recommended_level_of_care`. :ref:`dfn-iar_dst_recommended_level_of_care` allows for both "Level x" and "Level x or above" responses, 
        e.g. `1: Level 1 - Self Management` and `1+: Level 1 or above - Review assemssment on Contextual Domains to determine most appropriate placement`.
        :ref:`dfn-iar_dst_practitioner_level_of_care` only allows for "Level x" responses, e.g. `1: Level 1 - Self Management`.
        When determining if :ref:`dfn-iar_dst_practitioner_level_of_care` and :ref:`dfn-iar_dst_recommended_level_of_care` are equivalent the "Level x or above"
        :ref:`dfn-iar_dst_recommended_level_of_care` responses will be treated the same as "Level x" responses, i.e. the "+" will be dropped.

     #. If :ref:`dfn-iar_dst_practitioner_reason_for_override` is `9: Missing`, then no other responses can be selected

     #. Duplicates are not allowed


.. _intake-episode-current-validations:

Intake - Episode
~~~~~~~~~~~~~~~~

  #. If a :ref:`dfn-intake_organisation_path` is specified, that organisation must
     be an existing organisation within the PMHC MDS
  #. If an :ref:`dfn-intake_key` is specified, a :ref:`dfn-intake_organisation_path`
     must also be specified
  #. If an :ref:`dfn-episode_organisation_path` is specified, that organisation must
     be an existing organisation within the PMHC MDS
  #. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS

  **Note:** Intake Episode records can be submitted indepentantly of Intake records.
  The PMHC MDS does not validate that the :ref:`dfn-intake_key` referenced in an 
  Intake Episode record exists, only that the :ref:`dfn-intake_organisation_path` exists.

.. _episode-current-validations:

Episode
~~~~~~~

  #. Refer to :ref:`key-current-validations` for Episode Key validations
  #. The :ref:`dfn-episode_end_date` must not be before the :ref:`dfn-referral_date`
  #. :ref:`dfn-referrer_organisation_type` must be set to
     '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
     '98: N/A - Self referral'
  #. A maximum of one episode shall be :ref:`open <open-episode>` per client
  #. :ref:`Open episodes <open-episode>` must NOT have a response to either :ref:`dfn-episode_end_date`
     or :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`

  #. :ref:`Closed episodes <closed-episode>` must have a response to both :ref:`dfn-episode_end_date`
     and :ref:`dfn-organisation_type_referred_to_at_episode_conclusion`

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
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. :ref:`dfn-referral_date` value of '09099999' cannot be used on new records.
  #. Existing records already containing a :ref:`dfn-referral_date` that is
     not '09099999' may not be updated to '09099999'.

  #. On :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` the value 
     '22: HeadtoHelp / HeadtoHealth' must only be used on existing records. It 
     is not allowed on new records.
  #. On :ref:`dfn-organisation_type_referred_to_at_episode_conclusion` the value 
     '24: AMHC' must only be used on existing records. It is not allowed on new records.
  #. On :ref:`dfn-program_type` only NSW and Victorian Provider Organisations can 
     use the value '2: Head to Health Clinc'. Please refer to :ref:`dfn-program_type` 
     for further business rules on this field.
  #. Where :ref:`dfn-program_type` is '9: Universal Aftercare' a UA Episode record should also be recorded.
  #. The ``!uaooh`` tag must only be included in the :ref:`dfn-episode_tags` field
     where the :ref:`dfn-program_type` is '9: Universal Aftercare'. For more information see 
     `Current System Tags <https://docs.pmhc-mds.com/data-specifications.html#current-system-tags>`_.

.. _service-contact-current-validations:

Service Contact
~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Service Contact Key validations
  #.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the
      :ref:`dfn-episode_completion_status` must be recorded using one of the
      'Episode closed' responses (Response items 1-6)
  #.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the date of the
      :ref:`dfn-service_contact_final` must be recorded as the Episode End Date
  #.  Where an :ref:`dfn-episode_end_date` has been recorded, a later
      :ref:`dfn-service_contact_date` must not be added
  #.  If :ref:`dfn-service_contact_type` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  #.  If :ref:`dfn-service_contact_duration` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  #.  If :ref:`dfn-service_contact_modality` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  #.  If :ref:`dfn-service_contact_modality` is not '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must be 9999
  #.  If :ref:`dfn-service_contact_modality` is '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must not be 9999
  #. If :ref:`dfn-service_contact_modality` is '1: Face to Face',
     :ref:`dfn-service_contact_venue` must not be
     '98: Not applicable (Service Contact Modality is not face to face)'
  #. If :ref:`dfn-service_contact_modality` is not '1: Face to Face',
     :ref:`dfn-service_contact_venue` must be
     '98: Not applicable (Service Contact Modality is not face to face)'
  #. On :ref:`dfn-service_contact_type` the value '98: ATAPS' must only be
     used where data has been migrated from ATAPS. The above
     response must only be used under the following conditions:

      * The :ref:`dfn-service_contact_date` was before 30 June 2018
      * The :ref:`dfn-service_contact_tags` field must contain the ``!ATAPS`` flag
  #. If :ref:`dfn-service_contact_participants` is '1: Individual client'
     :ref:`dfn-service_contact_participation_indicator` must be '1: Yes'
  #. The ``!ATAPS`` tag must only be included in the :ref:`dfn-service_contact_tags`
     field where the :ref:`dfn-service_contact_date` was before 30 June 2018
  #. The :ref:`dfn-service_contact_date` 

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. :ref:`dfn-service_contact_start_time` value of '24:00' cannot be used on new records.
  #. Existing records already containing a :ref:`dfn-service_contact_start_time` that is not '24:00' may not be updated to '24:00'.
  #. On :ref:`dfn-funding_source` the value '0: Flexible funding pool - Not Otherwise Stated' must only be used on existing records. It is not allowed on new records.
  #. On :ref:`dfn-funding_source` the value '27: Universal Aftercare' must only be used in conjunction with the Universal Aftercare :ref:`dfn-program_type`.
  #. Where :ref:`dfn-program_type` is recorded as '7: Supporting Recovery', 
     :ref:`dfn-funding_source` must be recorded as '73: Other Government Funding - Commonwealth: Other Commonwealth'
  #. Where :ref:`dfn-funding_source` is recorded as '73: Other Government Funding - Commonwealth: Other Commonwealth',
     :ref:`dfn-program_type` must be '7: Supporting Recovery'
  #. The :ref:`dfn-service_contact_site`
  
     * When a Service Contact Site is provided, it must have between 2-50 valid unicode characters excluding commas (',')
     * When a Service Contact Site is provided, it must match a site name that is defined in :ref:`dfn-sites` for the Provider Organisation providing the Service Contact
  #. On :ref:`dfn-funding_source` the value '23: Head to Health program' must only be used on existing records. It is not allowed on new records.


.. _service-contact-practitioner-current-validations:

Service Contact Practitioner
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Service Contact Practitioner Key validations
  #. :ref:`dfn-service_contact_key` must be an existing PMHC service contact
     within the PMHC MDS
  #. :ref:`dfn-practitioner_key` must be an existing PMHC practitioner
     within the PMHC MDS
  #. One, and only one, Service Contact Practitioner per service contact must be
     flagged as the Primary Practitioner

.. _collection-occasion-current-validations:

Collection Occasion
~~~~~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Collection Occasion Key validations
  #. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS
  #. The :ref:`dfn-collection_occasion_date`

    * must not be before 1 January 2016
    * and must not be before :ref:`dfn-referral_date`
    * and must not be before :ref:`dfn-organisation_start_date`
    * and must not be more than 7 days after :ref:`dfn-episode_end_date`
    * and must not be after :ref:`dfn-organisation_end_date`
    * and must not be in the future

.. _k10p-current-validations:

K10+
~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS
  #. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K10+ <dfn-k10p_score>`)

.. _k5-current-validations:

K5
~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K5 <dfn-k5_score>`).

.. _sdq-current-validations:

SDQ
~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. Use the table at :ref:`SDQ Data Elements <sdq-data-elements>` to validate the items that
     are used in each version of the SDQ
  #. If both item scores and subscales are specified, the sum of the items
     must agree with the subscales score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)
  #. If both subscales and total score are specified, the sum of the subscales
     must agree with the total score (as per `Scoring the SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v2/data-model-and-specifications.html#scoring-the-sdq>`_)

.. _organisation-current-validations:

Organisation
~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Provider Organisation Key validations
  #. The :ref:`dfn-organisation_start_date`

     * must not be before 1 January 2014
       or before a commissioning organisation's start date
     * and must not be after the earliest :ref:`dfn-date_client_contacted_intake`
     * and must not be after the earliest :ref:`dfn-date_referred_to_other_service_at_intake_conclusion`
     * and must not be after the earliest :ref:`dfn-referral_date`
     * and must not be after the earliest :ref:`dfn-service_contact_date`
     * and must not be after the earliest :ref:`dfn-collection_occasion_date`
     * and must not be in the future

  #. The :ref:`dfn-organisation_end_date`

     * must not be before 1 January 2014
       or after a commissioning organisation's end date
     * and must not be before the latest :ref:`dfn-date_client_contacted_intake`
     * and must not be before the latest :ref:`dfn-date_referred_to_other_service_at_intake_conclusion`
     * and must not be before the latest :ref:`dfn-referral_date`
     * and must not be before the latest :ref:`dfn-episode_end_date`
     * and must not be before the latest :ref:`dfn-service_contact_date`
     * and must not be before the latest :ref:`dfn-collection_occasion_date`
     * can be in the future

  #. The :ref:`dfn-organisation_abn` must adhere to the format defined by the Australian Business 
     Register at https://abr.business.gov.au/Help/AbnFormat

  #. The :ref:`dfn-sites` fields

     * is case sensitive
     * must be blank or contain one or more comma separated site names
     * must be enclosed in double quotes (") if there is more than one site listed
     * each site name must be valid as per :ref:`service-contact-current-validations`
     * a site cannot be deleted if it is used on at least one service contact

.. _ua-episode-current-validations:

UA Episode
~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Episode Key validations
  #. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS.
  #. The program type of the linked Episode record must be '9: Universal Aftercare'
  #. The :ref:`dfn-primary_nominated_professional_consent_date`

     * must not be before 1 January 2019
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. The :ref:`dfn-primary_nominated_professional_contact_entry_date`

     * must not be before 1 January 2019
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. The :ref:`dfn-primary_nominated_professional_contact_exit_date`

     * must not be before 1 January 2019
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be before :ref:`dfn-primary_nominated_professional_contact_entry_date`
     * and must not be before :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  #. Where :ref:`dfn-previous_suicide_attempts` is recorded as '1: No', 
     :ref:`dfn-method_of_suicide_attempt` must be recorded as '0: Not applicable'



.. _ua-critical-incident-current-validations:

UA Critical Incident
~~~~~~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for UA Critical Incident Key validations
  #. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS.
  #. The program type of the linked Episode record must be '9: Universal Aftercare'
  #. The :ref:`dfn-critical_incident_date`

     * must not be before 1 January 2019
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

.. _ua-recommendation-out-current-validations:

UA Recommendation Out
~~~~~~~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for UA Recommendation Out Key validations
  #. :ref:`dfn-episode_key` must be an existing PMHC episode within the PMHC MDS.
  #. The program type of the linked Episode record must be '9: Universal Aftercare'
  #. UA Recommendation Outs for an Episode must have unique :ref:`dfn-recommendation_out_provider_type`.

.. _who-5-current-validations:

WHO-5
~~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. The program type of the Episode record that is linked via the Collection Occasion record must be '9: Universal Aftercare'

.. _sidas-current-validations:

SIDAS
~~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. The program type of the Episode record that is linked via the Collection Occasion record must be '9: Universal Aftercare'
  #. When item 1 has the value '0 - Never' all other items must be set to '98 - Not Required'

.. _ua-plan-current-validations:

UA Plan
~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. The program type of the Episode record that is linked via the Collection Occasion record must be '9: Universal Aftercare'

.. _ua-needs-identification-current-validations:

UA Needs Identification
~~~~~~~~~~~~~~~~~~~~~~~

  #. Refer to :ref:`key-current-validations` for Measure Key validations
  #. :ref:`dfn-collection_occasion_key` must be an existing Collection Occasion within the PMHC
     MDS.
  #. The program type of the Episode record that is linked via the Collection Occasion record must be '9: Universal Aftercare'

 .. _future-validations:

 .. Future Validations
 .. ------------------
