.. _identifier_management:

Identifier management
=====================

.. include:: type/key.rst

.. _PO_key:

Managing Provider Organisation Keys
-----------------------------------

Provider Organisations will be created and managed by Primary Health
Networks (PHNs) via upload or data entry. Each PHN must either create their own
Provider Organisations before any data can be uploaded, or if the PHN is
uploading the data, the Provider Organisation must be included in the upload.

Each Provider Organisation will need to be assigned a unique key. It is the
responsibility of the PHN to assign and manage these keys.

.. _client_keys:

Managing Client Keys
--------------------

Client records will be created and managed by Provider Organisations via the
upload and/or data entry interface. Each Client record needs to be assigned a
unique key in order to facilitate adding/updating/deleting each item when
uploading data. Once assigned, this key cannot change.

The :ref:`Client Key <client-data-elements>` will be managed by the Provider
Organisation, however, the PHN may decide to play a role in
coordinating assignment and management of these client keys.

Initially the Department wanted these keys to be unique across the PHN in order
to ensure that there is a single key for a client within the PHN, and will
continue to investigate options for the PMHC MDS implementation of a
Master Client Index during `Stage Two <http://docs.pmhc-mds.com/en/v1/faqs/system/development.html#stage-two>`_ of development.

.. _unique_keys:

Managing all other entity keys
------------------------------

The following entity keys will be created and managed by Provider Organisations:

* :ref:`Practitioner Key <practitioner-data-elements>`,
* :ref:`Intake Key <intake-data-elements>`,
* :ref:`Episode Key <episode-data-elements>`,
* :ref:`Service Contact Key <service-contact-data-elements>`,
* :ref:`Service Contact Practitioner Key <service-contact-practitioner-data-elements>`,
* :ref:`Collection Occasion Key <collection-occasion-data-elements>`,
* :ref:`Measure Key <measure-data-elements>`.

The PMHC MDS specification requires each of these keys to be unique and
stable at the Provider Organisation level.

Each record needs to be assigned a unique key in order to facilitate
adding/updating/deleting each item when uploading/entering data. These keys will
be created and managed by the Provider Organisation.

*If you still have questions after reading this information, please visit
the Department's responses
to* `Questions about Unique Identifiers and ‘Keys’ <http://docs.pmhc-mds.com/en/v1/faqs/concepts-processes/identifiers.html#identifier-and-key-faqs>`_
