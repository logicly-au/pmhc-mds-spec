.. _identifier_management:

Identifier management
=====================

PMHC MDS keys are case sensitive and must:

* have between 2- 50 valid unicode characters
* start with a POSIX alphanumeric character (A-Za-z0-9)

Where data is being exported from client systems, these keys can be auto generated,
providing that a key does not change once it is assigned.

.. _PO_key:

Managing Provider Organisation Keys
-----------------------------------

Provider Organisations will be created and managed by Primary Health
Networks (PHNs) through a user interface. Each PHN must create their own
Provider Organisations before any data can be uploaded. Each Provider
Organisation will need to be assigned a unique key. It is the responsibility
of the PHN to assign and manage these keys.

.. _client_keys:

Managing Client Keys
--------------------

Client records will be created and managed by Provider Organisations via the
upload and data entry interface. Each Client record needs to be assigned a
unique key in order to facilitate adding/updating/deleting each item when
uploading data. Once assigned, this key cannot change.

The :ref:`Client Key <client-data-elements>` will be managed by the Provider
Organisation, however, the PHN may decide to play a role in
coordinating assignment and management of these client keys.

Initially the Department wanted these keys to be unique across the PHN in order
to ensure that there is a single key for a client within the PHN, and will
continue to be investigate options for the PMHC MDS implementation of a
Master Client Index during `Stage Two <http://docs.pmhc-mds.com/en/v1/faqs/system/development.html#stage-two>`_ of development.

.. _unique_keys:

Managing Practitioner, Episode and Service Contact Keys
-------------------------------------------------------

The :ref:`Practitioner Key <practitioner-data-elements>`, :ref:`Episode Key <episode-data-elements>`,
:ref:`Service Contact Key <service-contact-data-elements>`
will be created and managed by Provider Organisations.

The PMHC MDS specification requires each of these keys to be unique and stable at the Provider Organisation level.

Each record needs to be assigned a unique key in order to facilitate
adding/updating/deleting each item when uploading/entering data. These keys will
be created and managed by the Provider Organisation.

.. _collection_occasion_keys:

Managing Outcome Collection Occasion Keys
-----------------------------------------
The :ref:`Outcome Collection Occasion Key <outcome-collection-occasion-data-elements>`
will be created and managed by Provider Organisations.

The PMHC MDS specification requires each of these keys to be unique and stable
at the Provider Organisation level. Collection Occasion keys are allowed to be
duplicated if different measures are collected on the same day for the same reason
and episode. You cannot have the same collection occasion key for different
collection occasions with the same measure.

This requirement has been implemented to allow a future version of the specification
to separate outcome collection occasions and measures so that multiple measures
can be associated with the one collection occasion.

Each record needs to be assigned a unique key in order to facilitate
adding/updating/deleting each item when uploading/entering data. These keys will
be created and managed by the Provider Organisation.

*If you still have questions after reading this information, please visit
the Department's responses
to* `Questions about Unique Identifiers and ‘Keys’ <http://docs.pmhc-mds.com/en/v1/faqs/concepts-processes/identifiers.html#identifier-and-key-faqs>`_
