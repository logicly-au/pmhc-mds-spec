.. _validation-rules:

Validation Rules
================

This document defines validation rules between items and record types.
The domain of individual items is defined in :ref:`record-formats`.

.. _current-validations:

Current Validations
-------------------

.. contents::
   :local:
   :depth: 1


.. _practitioner-current-validations:

Practitioner
~~~~~~~~~~~~

  1. :ref:`dfn-atsi_cultural_training` must only be set to
     '3 - Not required' where :ref:`dfn-practitioner_atsi_status` is one of

     * '1: Aboriginal but not Torres Strait Islander origin'
     * '2: Torres Strait Islander but not Aboriginal origin'
     * '3: Both Aboriginal and Torres Strait Islander origin'

     or

     The organisation to which the practitioner belongs has
     :ref:`dfn-organisation_type` set to '8: Aboriginal Health/Medical Service'

.. _client-current-validations:

Client
~~~~~~

  1. :ref:`dfn-date_of_birth` must not be before 1 January 1900 and must not be in the future

.. _episode-current-validations:

Episode
~~~~~~~

  1. The :ref:`dfn-episode_end_date` must not be before the :ref:`dfn-referral_date`
  2. :ref:`dfn-referrer_organisation_type` must be set to
     '98: N/A - Self referral' if and only if :ref:`dfn-referrer_profession` is also
     '98: N/A - Self referral'
  3. A maximum of one episode shall be open per client
  4. Where the
     :ref:`dfn-episode_completion_status` has been recorded using one of the
     'Episode closed' responses (Response items 1-6), the episode must have
     an :ref:`dfn-episode_end_date`, and/or episodes that have an
     :ref:`dfn-episode_end_date` must have an :ref:`dfn-episode_completion_status`
     recorded using one of the 'Episode closed' responses (Response items 1-6)
  5. On :ref:`dfn-principal_diagnosis` and :ref:`dfn-additional_diagnosis`
     the values:

     * '100: Anxiety disorders (ATAPS)'
     * '200: Affective (Mood) disorders (ATAPS)'
     * '300: Substance use disorders (ATAPS)'
     * '400: Psychotic disorders (ATAPS)'

     must only used where data has been migrated from ATAPS. The above
     responses must only be used under the following conditions:

     * The :ref:`dfn-referral_date` was before 1 July 2017
     * The :ref:`dfn-episode_tags` field must contain the ``!ATAPS`` flag
  6. The '4: Complex care package' response for :ref:`dfn-principal_focus` must
     only be used by selected PHN Lead Sites
  7. The ``!ATAPS`` tag must only be included in the :ref:`dfn-episode_tags` field
     where the :ref:`dfn-referral_date` was before 1 July 2017
  8. The :ref:`dfn-episode_end_date`

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

  9. The :ref:`dfn-referral_date`

     * must not be before 1 January 2014
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

.. _service-contact-current-validations:

Service Contact
~~~~~~~~~~~~~~~

  1.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the
      :ref:`dfn-episode_completion_status` must be recorded using one of the
      'Episode closed' responses (Response items 1-6)
  2.  Where :ref:`dfn-service_contact_final` is recorded as '1: No further services
      are planned for the client in the current episode', the date of the
      :ref:`dfn-service_contact_final` must be recorded as the Episode End Date
  3.  Where an :ref:`dfn-episode_end_date` has been recorded, a later
      :ref:`dfn-service_contact_date` must not be added
  4.  If :ref:`dfn-service_contact_type` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  5.  If :ref:`dfn-service_contact_duration` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  6.  If :ref:`dfn-service_contact_modality` is '0: No contact took place',
      :ref:`dfn-service_contact_no_show` must be '1: Yes'
  7.  If :ref:`dfn-service_contact_modality` is not '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must be 9999
  8.  If :ref:`dfn-service_contact_modality` is '1: Face to Face',
      :ref:`dfn-service_contact_postcode` must not be 9999
  9.  If :ref:`dfn-service_contact_modality` is '1: Face to Face',
      :ref:`dfn-service_contact_venue` must not be
      '98: Not applicable (Service Contact Modality is not face to face)'
  10. On :ref:`dfn-service_contact_type` the value '98: ATAPS' must only be
      used where data has been migrated from ATAPS. The above
      response must only be used under the following conditions:

      * The :ref:`dfn-service_contact_date` was before 30 June 2018
      * The :ref:`dfn-service_contact_tags` field must contain the ``!ATAPS`` flag
  11. If :ref:`dfn-service_contact_participants` is '1: Individual client'
      :ref:`dfn-service_contact_participation_indicator` must be '1: Yes'
  12. The ``!ATAPS`` tag must only be included in the :ref:`dfn-service_contact_tags`
      field where the :ref:`dfn-service_contact_date` was before 30 June 2018
  13. The :ref:`dfn-service_contact_date`

      * must not be before 1 January 2016
      * and must not be before :ref:`dfn-organisation_start_date`
      * and must not be after :ref:`dfn-organisation_end_date`
      * and must not be in the future

.. _k10p-current-validations:

K10+
~~~~

  1. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K10+ <dfn-k10p_score>`)
  2. The :ref:`dfn-measure_date`

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be more than 7 days after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future
  3. The K10+ Total Score is calculated as described at :ref:`dfn-k10p_score`

.. _k5-current-validations:

K5
~~

  1. If both item scores and a total score are specified, the item scores must
     add up to the total score (as per :ref:`Scoring the K5 <dfn-k5_score>`)
  2. The :ref:`dfn-measure_date`

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be more than 7 days after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

.. _sdq-current-validations:

SDQ
~~~

1. Use the table at :ref:`SDQ Data Elements <sdq-data-elements>` to validate the items that
   are used in each version of the SDQ
2. If both item scores and subscales are specified, the sum of the items
   must agree with the subscales score (as per :ref:`Scoring the SDQ <scoring-the-sdq>`)
3. If both subscales and total score are specified, the sum of the subscales
   must agree with the total score (as per :ref:`Scoring the SDQ <scoring-the-sdq>`)
4. The :ref:`dfn-measure_date`

     * must not be before 1 January 2016
     * and must not be before :ref:`dfn-referral_date`
     * and must not be before :ref:`dfn-organisation_start_date`
     * and must not be more than 7 days after :ref:`dfn-episode_end_date`
     * and must not be after :ref:`dfn-organisation_end_date`
     * and must not be in the future

.. _organisation-current-validations:

Organisation
~~~~~~~~~~~~

  1. The :ref:`dfn-organisation_start_date`

     * must not be before 1 January 2014
       or before a commissioning organisation's start  date
     * and must not be after the earliest :ref:`dfn-referral_date`
     * and must not be after the earliest :ref:`dfn-service_contact_date`
     * and must not be after the earliest :ref:`dfn-measure_date`
     * and must not be in the future

  2. The :ref:`dfn-organisation_end_date`

     * must not be before 1 January 2014
       or after a commissioning organisation's end date
     * and must not be before the latest :ref:`dfn-referral_date`
     * and must not be before the latest :ref:`dfn-episode_end_date`
     * and must not be before the latest :ref:`dfn-service_contact_date`
     * and must not be before the latest :ref:`dfn-measure_date`
     * can be in the future

.. _future-validations:

Future Validations
------------------

There are currently no planned future validations.
