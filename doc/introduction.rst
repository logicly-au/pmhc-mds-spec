.. _introduction:

Introduction
============

The recording of intake related activity (including activity for the
HeadtoHelp/HeadtoHealth and AMHC programmes) in the PMHC MDS will be
implemented as a core PMHC-MDS version 4 specification.

The new version 4 specification will comprise 4 entirely new tables, and the
revised collection occasion/measure tables that have been included in the
the Wayback and HeadtoHelp extension specifications.

The new tables are :ref:`intake-data-elements`,
:ref:`iar-dst-data-elements`,
:ref:`intake-episode-data-elements`,
:ref:`service-contact-practitioner-data-elements`.

There are four contexts where data can be submitted using the version 4
specification - Intake teams, Hubs, Combined Intake/Hubs and Service Providers
where there is no intake process.

Different records in the specification are intended to be used in each of
these contexts.

Within the PMHC-MDS system a single intake team and individual service providers/hubs
will each have their own organisation path and report data against those
organisations. It is noted that some service providers/hubs may be existing provider
organisations within the PMHC-MDS. The version 4 specification is compatible
with this reality.

.. _introduction-intake-context:

Intake Context
~~~~~~~~~~~~~~

In the Intake context the following records will need to be provided:

* `Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_
* :ref:`intake-data-elements`
* :ref:`iar-dst-data-elements`

Episode and Service contact activity is not submitted in this context.

.. _introduction-hub-context:

Hub Service Provider Context
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the hub context the specification works almost the same as a
service reporting via the Version 2 core PMHC-MDS specification using the new
:ref:`intake-episode-data-elements` record
to identify additional detail regarding referrals in from the
intake teams (:ref:`dfn-intake_organisation_path` and :ref:`dfn-intake_key`),
referrals out to additional services (:ref:`dfn-organisation_type_referred_to_at_episode_conclusion`), and
the involvement of multiple practitioners in service
contacts (:ref:`service-contact-practitioner-data-elements`) which allows
multiple endorsements.

.. _introduction-combined-context:

Combined Intake/Hub Context
~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the combined context all the records dscribed in both the
:ref:`introduction-intake-context` and :ref:`introduction-hub-context`
can be submitted.

.. _introduction-non-hub-context:

Non Hub Service Provider Context
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the non hub context (this is where there is no intake and is analogous with
the current Version 2 specification), the specification works almost the same
as a service reporting via the Version 2 core PMHC-MDS specification.

The :ref:`intake-data-elements` and :ref:`intake-episode-data-elements` do not
need to be supplied where there is no Intake component.

Version 4 allows for the involvement of multiple practitioners  in service
contacts (:ref:`service-contact-practitioner-data-elements`) which allows
multiple endorsements.

.. _introduction-intake:

Intake
~~~~~~

The model requires a new :ref:`intake-data-elements` record for every intake process.

The :ref:`intake-data-elements` table comprises records information about the
intake.

:ref:`dfn-organisation_path` and :ref:`dfn-intake_key` are the
two fields required to link the hub episode at the hub provider organisation
back to the intake record at the intake organisation.

The values of these fields should be passed along by the intake organisation
to the hub organisation where the hub organisation will use them to fill in
:ref:`dfn-intake_organisation_path` and :ref:`dfn-intake_key`. This will
then link the intake record at the intake organisation with the Episode
record at the hub organisation.

.. _introduction-iar-dst:

IAR-DST Measure
~~~~~~~~~~~~~~~

A new record type is required to capture the domains and the recommended
level of care pertinent to the IAR-DST that clients have completed for them
as part of the intake process. A new :ref:`iar-dst-data-elements` record
will be created for each intake process.

Consistent with the existing measures in the MDS, the domain scores will be
captured as well as the recommended level of care. The purpose of collecting
both domain scores and recommended level of care is to:

* allow verification of IAR-DST scoring processes, thereby catching scoring
  implementation errors early should they arise, and
* provide a resource that can be used to better understand how the IAR-DST
  scoring algorithm performs in real world environments supporting ongoing
  improvement of the tool.

.. _introduction-episode:

Episode
~~~~~~~

When the client is referred to a PMHC MDS reporting service (either a hub
or a non-hub) a new :ref:`episode-data-elements` record is created.

Where the service is a hub an additional :ref:`intake-episode-data-elements`
record is also created.

The :ref:`intake-episode-data-elements` table comprises a composite foreign key to link it
back to a standard episode record on which all the standard information is
recorded. This linkage is done via two fields:

1. The identifier of the intake team (:ref:`dfn-intake_organisation_path`)
2. The episode identifier of the intake team (:ref:`dfn-intake_key`)

The Service Contact record has been expanded with one new field - the
organisation(s) to which the organisation (intake team or hub) refers
the client (:ref:`dfn-organisation_type_referred_to_at_episode_conclusion`)

.. _introduction-service-contact:

Service Contact
~~~~~~~~~~~~~~~

The Service Contact record has been expanded with two new fields:

1. The time that the contact started (:ref:`dfn-service_contact_start_time`).
   This is intended to enable identification of activity undertaken during extended hours.
2. The funding source for the service contact (:ref:`dfn-funding_source`)

A new record - :ref:`service-contact-practitioner-data-elements` replaces the
Practitioner Key field from Version 2.
:ref:`service-contact-practitioner-data-elements` acknowledges the involvement
of multiple practitioners in a service contact. One practitioner must be
identified as the primary practitioner.

Data release and confidentiality
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

All data collection and reporting requirements are required to comply with
relevant Commonwealth, State and Territory Information Privacy and Health
Records regulations. Clients will be informed that some de-identified portions of the
information collected through the AMHC Service will be utilised
for Commonwealth, State and Territory planning and statistical purposes.
Appropriate consent and ethics approval processes will be adhered to.
