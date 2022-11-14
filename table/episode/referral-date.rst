The referral date is the date the client was originally referred to an MDS
reporting service. Typically the referral is made by an external (non-MDS)
provider - such as a general practitioner, but it may be another MDS reporting
service or the client themselves.

Where there is a
linked intake and treatment both the Intake and Episode records must use the
same date - ie. the date the client was originally referred.
The referral date is NOT the date that an
intake service refers a client to a treatment organisation. 

For clients who self refer,  the referral date should be the date
the client first contacted the intake service or provider organisation.
For the intake of a client who self referred, the referral date
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
