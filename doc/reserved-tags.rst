.. _reserved-tags:

Reserved Tags
=============

This document defines the Department reserved tags used to identify specific
records types in the Primary Mental Health Care Minimum Data Set (PMHC MDS).
Tags beginning with an exclamation mark (``!``) are reserved for future use by
the Department.

Tags field definitions for each record type are available in
:ref:`record-formats`.

.. current-reserved-tags:

Reserved tags currently in use
------------------------------

The following tags can currently be used in PMHC MDS uploads and data entry:

* :ref:`br20`
* :ref:`covid19`

.. _br20:

!br20 - Australian Government Mental Health Response to Bushfire
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

PHNs in fire affected communities are funded through the *Australian Government
Mental Health Response to Bushfire Trauma* to deliver services including:

  * Front line emergency distress and trauma counselling, with up to 10 free
    mental health support sessions for individuals, families and emergency
    services personnel
  * ‘Surge capacity’ mental health services to individuals and families who are
    affected, and
  * Increased demand for headspace sites in fire affected areas.

The PMHC MDS reporting changes are designed to capture this funded service
activity through the reserved Episode tag ``!br20``.

.. More information is available in the :download:`Primary Mental Health Care
   Minimum Data Set Circular 2020/01 – January 2020 </_static/PMHCMDS Circular
   2020-01.pdf>`.

.. _br20-funded-PHNS:

PHNs who received funding
~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs funded through the *Australian Government Mental Health Response to
Bushfire Trauma* **must** apply the bushfire response tag to all episodes where
one or more service contacts is funded by the response.

For these PHNs, the service provider should apply the bushfire response tag to:

New clients
"""""""""""

  * Who are accessing services funded through the *Australian Government Mental
    Health Response to Bushfire Trauma*
  * Whose access to a mental health service was prompted by exposure to
    bushfire (e.g. their stated reason for approaching a service is their
    recent exposure to bushfire), and/or
  * Whose mental health service need was significantly increased by their
    exposure to bushfire (e.g. based on the judgement of the service provider).

Existing clients
""""""""""""""""

i.e. clients with an open episode.

  * Who are accessing services funded through the *Australian Government Mental
    Health Response to Bushfire Trauma*, and/or
  * Whose mental health service need was significantly increased by their
    exposure to bushfire (e.g. additional or higher intensity services are
    required).

.. _br20-non-funded-PHNS:

PHNs who did **not** receive funding
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PHNs who did not receive funding for *Australian Government Mental Health
Response to Bushfire Trauma* activities may use the PMHC MDS reporting changes
to capture the service response to bushfire trauma.

For these PHNs, the service provider should apply the bushfire response tag to:

New clients
"""""""""""

  * Whose access to a mental health service was prompted by exposure to
    bushfire (e.g. their stated reason for approaching a service is their
    recent exposure to bushfire), and/or
  * Whose mental health service need was significantly increased by their
    exposure to bushfire (e.g. based on the judgement of the service provider).

Existing clients
""""""""""""""""

i.e. clients with an open episode.

  * Whose mental health service need was significantly increased by their
    exposure to bushfire (e.g. additional or higher intensity services are
    required).

.. _br20-Data-Entry:

How to apply the tag in the PMHC MDS Data Entry interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The bushfire response tag is available for use on an episode record and is
denoted ``!br20``.

There are two ways to apply the tag through the PMHC MDS data entry interface:

  1. Manual data entry by typing the tag ``!br20`` to the Episode tag field.

      * When entering data directly, episodes will need to be tagged with the
        string ``!br20``. The data entry system already allows for the tagging
        of records and therefore it is possible to implement this immediately
        by communicating the instructions to users.
      * Please note the free text nature of the tag system increases the
        opportunity for errors because it is easy to mistype a tag. This should
        be emphasised in communications with users.

  2. Tick the box labelled ‘Australian Government Mental Health Response to
     Bushfire’.

      * This tick box automatically adds/removes the tag when ticked/unticked.
        This functionality will be available by 24 January 2020.

The checkbox is on the Episode add and edit screen:

  * Ticking the checkbox will add the ``!br20`` tag to the tag field
  * Typing the ``!br20`` tag into the tag box will also tick the checkbox
  * Unticking the ``!br20`` checkbox will remove the ``!br20`` tag
  * Deleting the ``!br20`` tag from the tag field will also untick the checkbox

.. _br20-Upload:

Considerations for applying the !br20 tag in data uploads
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`reserved_tags_upload`

.. _covid19:

!covid19 - Episode occurred as result of COVID-19 pandemic
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The !covid19 tag was originally used for indicating that an episode
occurred as a result of the COVID-19 pandemic.

It's use was then changed for the purpose of implementing the
Head to Help Version 3 specification as documented at :ref:`covid19_hth`.

When migrating data during the Version 4 rollout,
NSW and Victorian pop-up clinics data was identified using the
Head to Help Version 3 extension and !covid19 tag. Any historical or new
records that are identified this way will be mapped to this to the `2: Head to Health`
Program Type field under the Version 4 specification.

The !covid19 tag will remain as a reserved tag for the original purpose of
indicating that an episode has occurred as result of the COVID-19 pandemic
once the Head to Help Version 3 extension reaches it’s end of life date.

.. _historical-reserved-tags:

Reserved tags no longer in use
------------------------------

The following tags have previously been available to be used in PMHC MDS uploads and
data entry. They still remain on existing data but must not be used for new
data uploaded after their retirement date. The following information is
provided for historical reference only.

+----------------+---------------------------+
| Tag            | Retirement Date           |
+================+===========================+
| :ref:`amhc`    | Week of 1st August 2022   |
+----------------+---------------------------+

.. _covid19_hth:

!covid19 - Australian Government HeadtoHelp hubs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

**The usage for the !covid19 tag is changing when the Head to Help Version 3
specification is phased out. The ongoing use for the !covid19 tag is
documented at** :ref:`covid19` **. The following documentation is being maintained
for historical purposes.**

The Australian Government is providing funding to Victorian PHNs to deliver
services through HeadtoHelp hubs as part of its response to the mental health
impact of COVID-19.

The department is implementing a new tag in the PMHC MDS to capture activity
associated with the HeadtoHelp hubs.

This change only applies to PHNs in Victoria.

The department will introduce further data collection requirements for
HeadtoHelp activity in the coming weeks and is consulting with PHNs. The
Department will advise Victorian PHNs of new data collection requirements in future circular/s.


New 'Australian Government HeadtoHelp hubs' tag (!covid19)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Department has introduced an ‘Australian Government HeadtoHelp hubs’ tag to the PMHC MDS.

All clients who either call the 1800 HeadtoHelp number or present in person
at a HeadtoHelp hub and are identified as HeadtoHelp hub clients will be
assessed through the ‘HeadtoHelp Victorian Mental Health Hubs Intake Assessment
and Referral Model of Care’ as outlined in the contract. Clients will be
referred to the most suitable service, which may be at a HeadtoHelp hub.

The PHN *must* apply ‘Australian Government HeadtoHelp hubs’ tag (!covid19) to
episodes of care initiated for clients who have been referred to the hub
through the IAR process and are receiving services funded through the
HeadtoHelp hubs contracts.

.. _covid19-Data-Entry:

How to apply the tag in the PMHC MDS Data Entry interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The HeadtoHelp hubs tag is available for use on an episode record and is
denoted ``!covid19``.

There are two ways to apply the tag through the PMHC MDS data entry interface:

  1. Manual data entry by typing the tag ``!covid19`` to the Episode tag field.

      * When entering data directly, episodes will need to be tagged with the
        string ``!covid19``. The data entry system already allows for the tagging
        of records and therefore it is possible to implement this immediately
        by communicating the instructions to users.
      * Please note the free text nature of the tag system increases the
        opportunity for errors because it is easy to mistype a tag. This should
        be emphasised in communications with users.

  2. Tick the box labelled ‘Australian Government HeadtoHelp hubs (!covid19)’.

      * This tick box automatically adds/removes the tag when ticked/unticked.

The checkbox is on the Episode add and edit screen:

  * Ticking the checkbox will add the ``!covid19`` tag to the tag field
  * Typing the ``!covid19`` tag into the tag box will also tick the checkbox
  * Unticking the ``!covid19`` checkbox will remove the ``!covid19`` tag
  * Deleting the ``!covid19`` tag from the tag field will also untick the checkbox

.. _covid19-Upload:

Considerations for applying the !covid19 tag in data uploads
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`reserved_tags_upload`

.. _amhc:

!amhc - Australian Government Mental Health Centres
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Scope of new interim data collection requirements
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Australian Government is providing funding to a number of PHNs who are
responsible for the operation of the AMHC trial sites.

The department is implementing a new tag in the PMHC MDS to capture activity
associated with AMHCs from December 2021, until the new version 4 data model
is available in March 2022.

This change only applies to the following PHNs implementing AMHCs from
December 2021:

*	West Victoria PHN
*	Northern Territory PHN
*	ACT PHN
*	North Perth PHN
*	Nepean Blue Mountains PHN
*	North Queensland PHN
*	Tasmania PHN

The department will provide further advice to these PHNs regarding new version
4 data collection requirements in a future circular. PHNs implementing AMHCs
will still be expected to retrospectively update AMHC data when the version
4 data model is introduced. The department will work with PHNs and Logicly
to ensure that PHNs have sufficient time to make these retrospective
data updates.

New ‘Australian Government Adult Mental Health Centre’ tag (!amhc)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The department is introducing an ‘Australian Government Adult Mental Health Centre’ tag to the PMHC MDS. It will be available before December 2021.

The PHN must apply ‘Australian Government Adult Mental Health Centre’ tag (!amhc) to episodes of care initiated for clients who have been referred to the AMHC hub through the IAR process and are receiving services funded through the AMHC hubs contracts.

A tick box will be added to the PMHC MDS interface to simplify data entry.

How to apply the tag in the PMHC MDS data entry interface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The AMHC tag is available for use on an episode record and is
denoted ``!amhc``.

There are two ways to apply the tag through the PMHC MDS data entry interface:

  1. Manual data entry by typing the tag ``!amhc`` to the Episode tag field.

      * When entering data directly, episodes will need to be tagged with the
        string ``!amhc``. The data entry system already allows for the tagging
        of records and therefore it is possible to implement this immediately
        by communicating the instructions to users.
      * Please note the free text nature of the tag system increases the
        opportunity for errors because it is easy to mistype a tag. This should
        be emphasised in communications with users.

  2. Tick the box labelled ‘Australian Government Adult Mental Health Centre (!amhc)’.

      * This tick box automatically adds/removes the tag when ticked/unticked.

The checkbox is on the Episode add and edit screen:

  * Ticking the checkbox will add the ``!amhc`` tag to the tag field
  * Typing the ``!amhc`` tag into the tag box will also tick the checkbox
  * Unticking the ``!amhc`` checkbox will remove the ``!amhc`` tag
  * Deleting the ``!amhc`` tag from the tag field will also untick the checkbox

.. _amhc-Upload:

Considerations for applying the !amhc tag in data uploads
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Please refer to :ref:`reserved_tags_upload`

.. _reserved_tags_upload:

Considerations for applying reserved tags in data uploads
---------------------------------------------------------

Users of local third-party or in-house developed systems will need to address
varying issues depending on the capability of the system. When considering
options please be aware the PMHC MDS specification does not require that data
is captured in the same manner as it is supplied during upload.

For example, an ideal solution could be to add an extensible multiple choice
“Tags” field to local episode data entry screens. This could initially include
an “Australian Government Mental Health Response to Bushfire” option thereby
providing the organisation control over the possible tags that can be captured.
By ensuring that additional options were easily added in the future such a
field would support future special access programs without significant changes,
as well as other purposes local or as requested by the Department.

An alternative approach, requiring less development, would be to extend an
existing local field at the episode level with an “Australian Government Mental
Health Response to Bushfire” option. This gives the organisation control over
the values that may be selected.

In both of the above examples, development work would also be required in the
data extraction process used to produce PMHC MDS compliant upload files. An
endorsement of “Australian Government Mental Health Response to Bushfire” via
either method would be converted to the tag !br20 on the extracted episode
records where appropriate.

An alternative but not preferred option is that episode records could be
uploaded and then subsequently manually tagged via the data entry interface.
This would require significant manual processes and double handling but it is a
use case supported by the PMHC MDS.

If you have queries about managing data upload processes please contact the
PMHC MDS helpdesk at support@pmhc-mds.com.
