The referral date is the date the client was originally referred at the start of
the process that led them into a PMHC MDS funded service. Where both
an Intake and an Episode are recorded for a client, the referral date on the Intake
and the referral date on the Epsiode should be the same date.

It is acknowledged that collecting the same data item on two records is not ideal,
however, Intakes may not lead to a PMHC MDS funded Episode, and, for some
Program Types, it is not compulsory for Intakes to be collected. It therefore
becomes necessary to collect the referral date at both Intake and Episode to
ensure that it is captured.

For clients who self refer at Intake, the referral date should be the date
the client first contacted the provider organisation. In this instance the referral date
will be the same as the :ref:`dfn-date_client_contacted_intake`.

For Date fields, data must be recorded in compliance with the standard format
used across the National Health Data Dictionary; specifically, dates must be
of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
necessary to pad out a value. For instance, 13th March 2008 would appear as
13032008.

- The referral date for Intakes must not be before 1st January 2020.
- The referral date for Episodes must not be before 1st January 2014.
- The referral date must not be in the future.

Referral date was optional in specifications prior to Version 4. In Version 4
referral date has been made mandatory. In order to export and re-upload episode data
that was uploaded or entered prior to Version 4 the value '09099999' will be
used in data exports and allowed for existing episode data without a referral date.
See :ref:`episode-current-validations` for rules on
how this value may be used.
