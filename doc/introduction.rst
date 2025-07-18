.. _introduction:

Introduction
============

Version 5.0 rebrands The Way Back to Universal Aftercare and includes it
as part of the default specification instead of an extension. Version 5.0
also completes the rebranding of AMHC/HeadtoHealth to Medicare Mental Health Centre (MMHC) by
retiring the AMHC Program Type and renaming the Head to Health Program Type to Head To Health Clinic. 

The new version 5 specification comprises 7 entirely new tables for Universal Aftercare. 
These tables only need to be submitted where Episodes using the new '8: Universal Aftercare' Program Type are included.

The new tables are :ref:`ua-episode-data-elements`,
:ref:`ua-recommendation-out-data-elements`,
:ref:`ua-critical-incident-data-elements`,
:ref:`ua-plan-data-elements`,
:ref:`ua-needs-identification-data-elements`,
:ref:`sidas-data-elements`,
:ref:`who5-data-elements`.


********Flesh this out more***********
New Veteran field on Episode table
New Practitioner Reason for Override field on IAR-DST table

AMHC Program Type retired
Head to Health Program Type renamed to Head to Health Clinic

.. _introduction-contexts:

Contexts
--------

There are three contexts where data can be submitted using the version 5
specification:

1. Intake teams
2. Treatment organisations
3. Combined Intake/Treatment organisations

Different records in the specification are intended to be used in each of
these contexts.

Within the PMHC-MDS system a single intake team and individual
service providers/treatment organisations will each have their own organisation
path and report data against those organisations.

.. _introduction-intake-context:

Intake Context
^^^^^^^^^^^^^^

Where an organisation is only providing intake services and not providing any
treatment services, they can use the following data model to submit data to
the PMHC MDS:

.. figure:: figures/data-model-v5.0-intake.svg
   :alt: PMHC MDS v5.0 Intake Only Data Model

In the Intake context the following records will need to be provided:

* `Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_
* :ref:`intake-data-elements`
* :ref:`iar-dst-data-elements`

Episode and Service contact activity is not submitted in this context.

The collection of Intake and IAR data may not be required for all programs.
Please see :ref:`intake-data-elements`.

.. _introduction-treatment-context:

Treatment Service Provider Context
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Where an organisation is only providing treatment services and not providing any
intake services, they can use the following data model to submit data to
the PMHC MDS:

.. figure:: figures/data-model-v5.0-treatment.svg
   :alt: PMHC MDS v5.0 Treatment Service Provider Data Model

In the treatment context the specification works almost the same as a
service reporting via the Version 2 core PMHC-MDS specification using the new
:ref:`intake-episode-data-elements` record
to identify additional detail regarding referrals in from the
intake teams (:ref:`dfn-intake_organisation_path` and :ref:`dfn-intake_key`),
referrals out to additional services (:ref:`dfn-organisation_type_referred_to_at_episode_conclusion`), and
the involvement of multiple practitioners in service
contacts (:ref:`service-contact-practitioner-data-elements`) which allows
multiple endorsements.

Intake and IAR-DST activity is not submitted in this context.

.. _introduction-combined-context:

Combined Intake/Treatment Context
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Where an organisation is providing both intake services and
treatment services, they can use the full data model to submit data to
the PMHC MDS:

.. figure:: figures/data-model-v5.0-combined.svg
   :alt: PMHC MDS v5.0 Combined Intake/Treatment Service Provider Data Model

In the combined context all the records described in both the
:ref:`introduction-intake-context` and :ref:`introduction-treatment-context`
can be submitted.

New Records and Fields in Version 5
-----------------------------------

.. _introduction-ua-episode:

UA Episode
^^^^^^^^^^

*****Fill In*****

.. _introduction-ua-recommendation-out:

UA Recommendation Out
^^^^^^^^^^^^^^^^^^^^^

*****Fill In*****

.. _introduction-ua-critical-incident:

UA Critical Incident
^^^^^^^^^^^^^^^^^^^^

*****Fill In*****

UA Plan
^^^^^^^

*****Fill In*****

UA Needs Identification
^^^^^^^^^^^^^^^^^^^^^^^

*****Fill In*****

SIDAS
^^^^^

*****Fill In*****

WHO-5
^^^^^

*****Fill In*****


Data release and confidentiality
--------------------------------

All data collection and reporting requirements are required to comply with
relevant Commonwealth, State and Territory Information Privacy and Health
Records regulations. Clients will be informed that some de-identified portions of the
information collected through the PMHC MDS Service will be utilised
for Commonwealth, State and Territory planning and statistical purposes.
Appropriate consent and ethics approval processes will be adhered to.
