Definitions
-----------

.. _dfn-organisation_abn:

ABN
^^^

The Australian Business Number of the provider organisation.

:Field name: organisation_abn

:Data type: string (11)

:Required: yes

:Notes:
  The Australian Business Registry maintains ABN search and technical 
  docs. The PMHC MDS does not check the if ABN is registered, only that 
  it satisfies the algorithm documented at https://abr.business.gov.au/Help/AbnFormat
  

----------

.. _dfn-client_atsi_status:

Aboriginal and Torres Strait Islander Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person identifies as being of Aboriginal and/or Torres Strait Islander origin, as represented by a code.

:Field name: client_atsi_status

:Data type: string

:Required: yes

:Domain:
  :1: Aboriginal but not Torres Strait Islander origin
  :2: Torres Strait Islander but not Aboriginal origin
  :3: Both Aboriginal and Torres Strait Islander origin
  :4: Neither Aboriginal or Torres Strait Islander origin
  :9: Not stated/inadequately described

:Notes:
  Code 9 is not to be available as a valid answer to the questions but is
    intended for use:
  
    - Primarily when importing data from other data collections that do not
      contain mappable data.
    - Where an answer was refused.
    - Where the question was not able to be asked prior to completion of
      assistance because the client was unable to communicate or a person who
      knows the client was not available.
  

:METeOR: `291036 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291036>`__

----------

.. _dfn-practitioner_active:

Active
^^^^^^

A flag to represent whether a practitioner is actively delivering services. This is a system field that is aimed at helping organisations manage practitioner codes.

:Field name: practitioner_active

:Data type: string

:Required: yes

:Domain:
  :0: Inactive
  :1: Active

----------

.. _dfn-additional_diagnosis:

Additional Diagnosis
^^^^^^^^^^^^^^^^^^^^

The main additional condition or complaint co-existing with the Principal Diagnosis or arising during the episode of care.

:Field name: additional_diagnosis

:Data type: string

:Required: yes

:Domain:
  :000: No additional diagnosis
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing

:Notes:
  Additional Diagnosis gives information on conditions that are significant in
  terms of treatment required and resources used during the episode of care.
  Additional diagnoses should be interpreted as conditions that affect client
  management in terms of requiring any of the following:
  
  -	Commencement, alteration or adjustment of therapeutic treatment
  -	Diagnostic procedures
  -	Increased clinical care and/or monitoring
  
  Where the client one or more comorbid mental health conditions in addition to
  the condition coded as the Principal Diagnosis, record the main condition as
  the Additional Diagnosis. 
  
  The following responses have been added to allow mapping of ATAPS data to PMHC
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated
  from ATAPS MDS sources that cannot be described by any other Diagnosis.
  It is expected that the majority of Episodes delivered to clients
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  
  For further notes on the recording of diagnosis codes see Principal Diagnosis.
  

----------

.. _dfn-client_postcode:

Area of usual residence, postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode of the client.

:Field name: client_postcode

:Data type: string

:Required: yes

:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown or the client
  has not provided sufficient information to confirm their current residential
  address.
  
  The full list of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  When collecting the postcode of a person's usual place of residence, the ABS
  recommends that 'usual' be defined as: 'the place where the person has or
  intends to live for 6 months or more, or the place that the person regards as
  their main residence, or where the person has no other residence, the place
  they currently reside.'
  
  Postcodes are deemed valid if they are in the range 0200-0299, 0800-9999.
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-atsi_cultural_training:

ATSI Cultural Training
^^^^^^^^^^^^^^^^^^^^^^

Indicates whether a practitioner has completed a recognised training programme in the delivery of culturally safe services to Aboriginal and Torres Strait Islander peoples.

:Field name: atsi_cultural_training

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Not required
  :9: Missing / Not recorded

:Notes:
  This item is reported by the practitioner and applies to service providers who are either:
  
  -	not of Aboriginal or Torres Strait Islander status; or
  -	are not employed by an Aboriginal Community Controlled Health Service.
  
  1	- Yes
    The practitioner has:
  
    - undertaken specific training in the delivery of culturally appropriate
      mental health /health services for Aboriginal and Torres Strait Islander
      peoples. As a guide, recognised training programs include those endorsed by
      the Australian Indigenous Psychologists’ Association (AIPA) or similar
      organisation; or
    - undertaken local cultural awareness training in the community in which they
      are practising, as delivered or endorsed by the elders of that community or
      the local Aboriginal Community Controlled Health Service.
  
  2 - No
    The practitioner has not met the requirements stated above.
  
  3 - Not required
    This option is reserved only for practitioners who are of Aboriginal and
    Torres Strait Islander descent, or employed by an Aboriginal Community
    Controlled Health Service.
  
  4 - Missing/Not recorded
    This is a system code for missing data and not a valid response option for
    practitioners.
  

----------

.. _dfn-client_consent:

Client Consent to Anonymised Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication that the client has consented to their anonymised data being provided to the Department of Health for statistical purposes in planning and improving mental health services.

:Field name: client_consent

:Data type: string

:Required: yes

:Notes:
  1 - Yes
      The client has consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be included in reports and
      extracts accessible by the Department of Health.
  
  2 - No
      The client has not consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be excluded from reports and
      extracts accessible by the Department of Health.
  
  All data can be uploaded, regardless of consent flag.
  
  All data will be available to PHNs to extract for their own internal data evaluation purposes.
  

----------

.. _dfn-client_gender:

Client Gender
^^^^^^^^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: client_gender

:Data type: string

:Required: yes

:Domain:
  :0: Not stated/Inadequately described
  :1: Male
  :2: Female
  :3: Other

:Notes:
  1 - M - Male
    Adults who identify themselves as men, and children who identify themselves
    as boys.
  
  2 - F - Female
    Adults who identify themselves as women, and children who identify themselves
    as girls.
  
  3 - X- Other
    Adults and children who identify as non-binary, gender diverse, or with
    descriptors other than man/boy or woman/girl.
  

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view= <http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view=>`__

----------

.. _dfn-client_key:

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual client referred to the commissioned organisation. The client identifier must be unique and stable for each individual within the Provider Organisation. Assigned by either the PHN or Provider Organisation depending on local procedures.

:Field name: client_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Client keys must be unique within each Provider Organisation. The Client Key
  will be managed by the Provider Organisation, however, the PHN may decide to
  play a role in coordinating assignment and management of these client keys.
  Clients should not be assigned multiple keys within the same Provider Organisation.
  
  Client keys are case sensitive and must be valid unicode characters.
  
  See :ref:`client_keys`
  

----------

.. _dfn-service_contact_participation_indicator:

Client Participation Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the client participated, or intended to participate, in the service contact, as represented by a code.

:Field name: service_contact_participation_indicator

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No

:Notes:
  Service contacts are not restricted to in-person communication but can include
  telephone, video link or other forms of direct communication.
  
  1 - Yes
    This code is to be used for service contacts between a mental health service
    provider and the patient/client in whose clinical record the service contact
    would normally warrant a dated entry, where the patient/client is
    participating.
  
  2 - No
    This code is to be used for service contacts between a mental health service
    provider and a third party(ies) where the patient/client, in whose clinical
    record the service contact would normally warrant a dated entry, is not
    participating.
  
  *Note:* Where a client intended to participate in a service contact but failed
  to attend, :ref:`dfn-service_contact_participation_indicator` should be recorded
  as '1: Yes' and :ref:`dfn-service_contact_no_show` should be recorded as '1: Yes'.
  

:METeOR: `494341 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494341>`__

----------

.. _dfn-client_tags:

Client Tags
^^^^^^^^^^^

List of tags for the client.

:Field name: client_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-collection_occasion_date:

Collection Occasion Date
^^^^^^^^^^^^^^^^^^^^^^^^

The date of the collection occasion.

:Field name: collection_occasion_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  If the date the activity was performed is unknown, 09099999 should be used.
  
  - For an intake collection occasion, the collection date must not be
    before 1st January 2020, otherwise, the collection date must not be before
    1st January 2016.
  
  - The collection date must not be in the future.
  

----------

.. _dfn-collection_occasion_key:

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of service activities. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Collection Occasion Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time.  See
  :ref:`Identifier Management <identifier_management>`
  

----------

.. _dfn-reason_for_collection:

Collection Occasion Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the service activities on the identified Collection Occasion.

:Field name: reason_for_collection

:Data type: string

:Required: yes

:Domain:
  :1: Episode start
  :2: Review
  :3: Episode end

:Notes:
  1 - Episode start
    Refers to an outcome measure undertaken at the beginning of an Episode of Care. For the purposes of the PMHC MDS protocol, episodes may start at the point of first Service Contact with a new client who has not been seen previously by the organisation, or a first contact for a new Episode of Care for a client who has received services from the organisation in a previous Episode of Care that has been completed.
  
  2 - Review
    Refers to an outcome measure undertaken during the course of an Episode of
    Care that post-dates Episode Start and pre-dates Episode End. An outcome
    measure may be undertaken at Review for a number of reasons including:
  
    - in response to critical clinical events or changes in the client’s mental
      health status;
    - following a client-requested review; or
    - other situations where a review may be indicated.
  
  3 - Episode end
    Refers to the outcome measures collected at the end of an Episode of Care.
  

----------

.. _dfn-collection_occasion_tags:

Collection Occasion Tags
^^^^^^^^^^^^^^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: collection_occasion_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_copayment:

Copayment
^^^^^^^^^

The co-payment is the amount paid by the client per session.

:Field name: service_contact_copayment

:Data type: number

:Required: yes

:Domain:
  0 - 999999.99

:Notes:
  Up to 6 digits before the decimal point; up to 2 digits after the decimal
  point.
  
  The co-payment is the amount paid by the client per service contact, not the
  fee paid by the project to the practitioner or the fee paid by the project to the
  practitioner plus the client contribution. In many cases, there will not be a
  co-payment charged and therefore zero should be entered. Where a co-payment
  is charged it should be minimal and based on an individual's capacity to pay.
  

----------

.. _dfn-country_of_birth:

Country of Birth
^^^^^^^^^^^^^^^^

The country in which the client was born, as represented by a code.

:Field name: country_of_birth

:Data type: string (4)

:Required: yes

:Domain:
  :1101: Australia
  :1102: Norfolk Island
  :1199: Australian External Territories, nec
  :1201: New Zealand
  :1301: New Caledonia
  :1302: Papua New Guinea
  :1303: Solomon Islands
  :1304: Vanuatu
  :1401: Guam
  :1402: Kiribati
  :1403: Marshall Islands
  :1404: Micronesia, Federated States of
  :1405: Nauru
  :1406: Northern Mariana Islands
  :1407: Palau
  :1501: Cook Islands
  :1502: Fiji
  :1503: French Polynesia
  :1504: Niue
  :1505: Samoa
  :1506: Samoa, American
  :1507: Tokelau
  :1508: Tonga
  :1511: Tuvalu
  :1512: Wallis and Futuna
  :1513: Pitcairn Islands
  :1599: Polynesia (excludes Hawaii), nec
  :1601: Adelie Land (France)
  :1602: Argentinian Antarctic Territory
  :1603: Australian Antarctic Territory
  :1604: British Antarctic Territory
  :1605: Chilean Antarctic Territory
  :1606: Queen Maud Land (Norway)
  :1607: Ross Dependency (New Zealand)
  :2102: England
  :2103: Isle of Man
  :2104: Northern Ireland
  :2105: Scotland
  :2106: Wales
  :2107: Guernsey
  :2108: Jersey
  :2201: Ireland
  :2301: Austria
  :2302: Belgium
  :2303: France
  :2304: Germany
  :2305: Liechtenstein
  :2306: Luxembourg
  :2307: Monaco
  :2308: Netherlands
  :2311: Switzerland
  :2401: Denmark
  :2402: Faroe Islands
  :2403: Finland
  :2404: Greenland
  :2405: Iceland
  :2406: Norway
  :2407: Sweden
  :2408: Aland Islands
  :3101: Andorra
  :3102: Gibraltar
  :3103: Holy See
  :3104: Italy
  :3105: Malta
  :3106: Portugal
  :3107: San Marino
  :3108: Spain
  :3201: Albania
  :3202: Bosnia and Herzegovina
  :3203: Bulgaria
  :3204: Croatia
  :3205: Cyprus
  :3206: The former Yugoslav Republic of Macedonia
  :3207: Greece
  :3208: Moldova
  :3211: Romania
  :3212: Slovenia
  :3214: Montenegro
  :3215: Serbia
  :3216: Kosovo
  :3301: Belarus
  :3302: Czech Republic
  :3303: Estonia
  :3304: Hungary
  :3305: Latvia
  :3306: Lithuania
  :3307: Poland
  :3308: Russian Federation
  :3311: Slovakia
  :3312: Ukraine
  :4101: Algeria
  :4102: Egypt
  :4103: Libya
  :4104: Morocco
  :4105: Sudan
  :4106: Tunisia
  :4107: Western Sahara
  :4108: Spanish North Africa
  :4111: South Sudan
  :4201: Bahrain
  :4202: Gaza Strip and West Bank
  :4203: Iran
  :4204: Iraq
  :4205: Israel
  :4206: Jordan
  :4207: Kuwait
  :4208: Lebanon
  :4211: Oman
  :4212: Qatar
  :4213: Saudi Arabia
  :4214: Syria
  :4215: Turkey
  :4216: United Arab Emirates
  :4217: Yemen
  :5101: Myanmar
  :5102: Cambodia
  :5103: Laos
  :5104: Thailand
  :5105: Vietnam
  :5201: Brunei Darussalam
  :5202: Indonesia
  :5203: Malaysia
  :5204: Philippines
  :5205: Singapore
  :5206: Timor-Leste
  :6101: China (excludes SARs and Taiwan) 
  :6102: Hong Kong (SAR of China)
  :6103: Macau (SAR of China)
  :6104: Mongolia
  :6105: Taiwan 
  :6201: Japan
  :6202: Korea, Democratic People's Republic of (North)
  :6203: Korea, Republic of (South)
  :7101: Bangladesh
  :7102: Bhutan
  :7103: India
  :7104: Maldives
  :7105: Nepal
  :7106: Pakistan
  :7107: Sri Lanka
  :7201: Afghanistan
  :7202: Armenia
  :7203: Azerbaijan
  :7204: Georgia
  :7205: Kazakhstan
  :7206: Kyrgyzstan
  :7207: Tajikistan
  :7208: Turkmenistan
  :7211: Uzbekistan
  :8101: Bermuda
  :8102: Canada
  :8103: St Pierre and Miquelon
  :8104: United States of America
  :8201: Argentina
  :8202: Bolivia
  :8203: Brazil
  :8204: Chile
  :8205: Colombia
  :8206: Ecuador
  :8207: Falkland Islands
  :8208: French Guiana
  :8211: Guyana
  :8212: Paraguay
  :8213: Peru
  :8214: Suriname
  :8215: Uruguay
  :8216: Venezuela
  :8299: South America, nec
  :8301: Belize
  :8302: Costa Rica
  :8303: El Salvador
  :8304: Guatemala
  :8305: Honduras
  :8306: Mexico
  :8307: Nicaragua
  :8308: Panama
  :8401: Anguilla
  :8402: Antigua and Barbuda
  :8403: Aruba
  :8404: Bahamas
  :8405: Barbados
  :8406: Cayman Islands
  :8407: Cuba
  :8408: Dominica
  :8411: Dominican Republic
  :8412: Grenada
  :8413: Guadeloupe
  :8414: Haiti
  :8415: Jamaica
  :8416: Martinique
  :8417: Montserrat
  :8421: Puerto Rico
  :8422: St Kitts and Nevis
  :8423: St Lucia
  :8424: St Vincent and the Grenadines
  :8425: Trinidad and Tobago
  :8426: Turks and Caicos Islands
  :8427: Virgin Islands, British 
  :8428: Virgin Islands, United States
  :8431: St Barthelemy
  :8432: St Martin (French part)
  :8433: Bonaire, Sint Eustatius and Saba
  :8434: Curacao
  :8435: Sint Maarten (Dutch part)
  :9101: Benin
  :9102: Burkina Faso
  :9103: Cameroon
  :9104: Cabo Verde
  :9105: Central African Republic
  :9106: Chad
  :9107: Congo, Republic of
  :9108: Congo, Democratic Republic of
  :9111: Cote d'Ivoire
  :9112: Equatorial Guinea
  :9113: Gabon
  :9114: Gambia
  :9115: Ghana
  :9116: Guinea
  :9117: Guinea-Bissau
  :9118: Liberia
  :9121: Mali
  :9122: Mauritania
  :9123: Niger
  :9124: Nigeria
  :9125: Sao Tome and Principe
  :9126: Senegal
  :9127: Sierra Leone
  :9128: Togo
  :9201: Angola
  :9202: Botswana
  :9203: Burundi
  :9204: Comoros
  :9205: Djibouti
  :9206: Eritrea
  :9207: Ethiopia
  :9208: Kenya
  :9211: Lesotho
  :9212: Madagascar
  :9213: Malawi
  :9214: Mauritius
  :9215: Mayotte
  :9216: Mozambique
  :9217: Namibia
  :9218: Reunion
  :9221: Rwanda
  :9222: St Helena
  :9223: Seychelles
  :9224: Somalia
  :9225: South Africa
  :9226: Swaziland
  :9227: Tanzania
  :9228: Uganda
  :9231: Zambia
  :9232: Zimbabwe
  :9299: Southern and East Africa, nec
  :9999: Unknown

:Notes:
  `Standard Australian Classification of Countries (SACC), 2016 4-digit
  code (ABS Catalogue No. 1269.0)
  <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`_ SACC 2016 is a
  four-digit, three-level hierarchical structure specifying major group, minor
  group and country. 9999 is used when the information is not known or the
  client has refused to provide the information.
  
  Organisations are encouraged to produce customised lists of the most common
  languages in use by their local populations from the above resource. Please
  refer to :ref:`form_country_of_birth` for help on designing forms.
  

:METeOR: `459973 <http://meteor.aihw.gov.au/content/index.phtml/itemId/459973>`__

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0 <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1269.0>`__

----------

.. _dfn-date_client_contacted_intake:

Date client contacted Intake
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date on which the client first contacted the intake service

:Field name: date_client_contacted_intake

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The contact date must not be before 1st January 2020.
  
  - The contact date must not be in the future.
  

----------

.. _dfn-date_of_birth:

Date of Birth
^^^^^^^^^^^^^

The date on which an individual was born.

:Field name: date_of_birth

:Data type: date

:Required: yes

:Notes:
  - The date of birth must not be before January 1st 1900.
  
  - The date of birth must not be in the future.
  
  - If the date of birth is unknown, the following approaches should be used:
  
    - If the age of the person is known, the age should be used to derive the
      year of birth
    - If the age of the person is unknown, an estimated age of the person should
      be used to estimate a year of birth
    - An actual or estimated year of birth should then be converted into an
      estimated date of birth using the
      following convention: 0101Estimated year of birth.
    - If the date of birth is totally unknown, use 09099999.
    - If you have estimated the year of birth make sure you record this in the
      'Estimated date of birth flag'
  

:METeOR: `287007 <http://meteor.aihw.gov.au/content/index.phtml/itemId/287007>`__

----------

.. _dfn-date_referred_to_other_service_at_intake_conclusion:

Date referred to other service at Intake conclusion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date the client was referred to another organisation at Intake conclusion.

:Field name: date_referred_to_other_service_at_intake_conclusion

:Data type: date

:Required: no

:Notes:
  - The referral out date must not be before 1st January 2020.
  
  - The referral out end date must not be in the future.
  

----------

.. _dfn-service_contact_duration:

Duration
^^^^^^^^

The time from the start to finish of a service contact.

:Field name: service_contact_duration

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: 1-15 mins
  :2: 16-30 mins
  :3: 31-45 mins
  :4: 46-60 mins
  :5: 61-75 mins
  :6: 76-90 mins
  :7: 91-105 mins
  :8: 106-120 mins
  :9: over 120 mins

:Notes:
  For group sessions the time for client spent in the session is recorded for
  each client, regardless of the number of clients or third parties participating
  or the number of service providers providing the service. Writing up details of
  service contacts is not to be reported as part of the duration, except if
  during or contiguous with the period of client or third party participation.
  Travel to or from the location at which the service is provided, for example to
  or from outreach facilities or private homes, is not to be reported as part of
  the duration of the service contact.
  
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  

----------

.. _dfn-employment_participation:

Employment Participation
^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person in paid employment is employed full-time or part-time, as represented by a code.

:Field name: employment_participation

:Data type: string

:Required: yes

:Domain:
  :1: Full-time
  :2: Part-time
  :3: Not applicable - not in the labour force
  :9: Not stated/inadequately described

:Notes:
  Applies only to people whose labour force status is employed. (See metadata
  item Labour Force Status, for a definition of 'employed'). Paid employment
  includes persons who performed some work for wages or salary, in cash or in
  kind, and persons temporarily absent from a paid employment job but who
  retained a formal attachment to that job.
  
  1 - Full-time
    Employed persons are working full-time if they:
    (a) usually work 35 hours or more in a week (in all paid jobs) or
    (b) although usually working less than 35 hours a week, actually worked 35
    hours or more during the reference period.
  
  2 - Part-time
    Employed persons are working part-time if they usually work less than 35
    hours a week (in all paid jobs) and either did so during the reference
    period, or were not at work in the reference period.
  
  9 - Not stated / inadequately described
    Is not to be used on primary collection forms. It is primarily for use in
    administrative collections when transferring data from data sets where the
    item has not been collected.
  

:METeOR: `269950 <http://meteor.aihw.gov.au/content/index.phtml/itemId/269950>`__

----------

.. _dfn-episode_completion_status:

Episode Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Required: no

:Domain:
  :0: Episode open
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - client moved out of area
  :5: Episode closed administratively - client referred elsewhere
  :6: Episode closed administratively - other reason

:Notes:
  In order to use code 1 (Episode closed - treatment concluded) the client must have at least one service contact. All other codes may be applicable even when the client has no service contacts.
  
  0 or Blank - Episode open
    The client still requires treatment and further service contacts are
    required.
  
  1 - Episode closed - treatment concluded
    No further service contacts are planned as the client no longer requires
    treatment.
  
  2 - Episode closed administratively - client could not be contacted
    Further service contacts were planned but the client could no longer be
    contacted.
  
  3 - Episode closed administratively - client declined further contact
    Further service contacts were planned but the client declined further treatment.
  
  4 - Episode closed administratively - client moved out of area
    Further service contacts were planned but the client moved out of the area
    without a referral elsewhere. Where a client was referred somewhere else
    *Episode Completion Status* should be recorded as code 5 (Episode closed
    administratively - client referred elsewhere).
  
  5 - Episode closed administratively - client referred elsewhere
    Where a client still requires treatment, but a different service has been
    deemed appropriate or a client has moved out of the area so has moved to a
    different provider.
  
  6 - Episode closed administratively - other reason
    Where a client is no longer being given treatment but the reason for
    conclusion is not covered above.
  
  *Episode Completion Status* interacts with two other data items in the PMHC MDS
  - *Service Contact - Final*, and *Episode End Date*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact -
    Final* item that requires the service provider to indicate whether further
    Service Contacts are planned. Where this item is recorded as 'no further
    services planned', the *Episode Completion Status* should be recorded as code
    1 (Episode closed - treatment concluded) code 3 (Episode closed
    administratively - client declined further contact), code 4 (Episode closed
    administratively - client moved out of area), or code 5 (Episode closed
    administratively - client referred elsewhere). Selection of coding option
    should be that which best describes the circumstances of the episode ending.
  
  *Episode End Date*
    Where a Final Service Contact is recorded *Episode End Date* should be
    recorded as the date of the final Service Contact.
  

----------

.. _dfn-episode_end_date:

Episode End Date
^^^^^^^^^^^^^^^^

The date on which an *Episode of Care* is formally or administratively ended

:Field name: episode_end_date

:Data type: date

:Required: no

:Notes:
  - The episode end date must not be before 1st January 2016.
  
  - The episode end date must not be in the future.
  
  An *Episode of Care* may be ended in one of two ways:
  
  - clinically, consequent upon conclusion of treatment for the client and
    discharge from care; or
  
  - administratively (statistically), where contact with the client has been lost
    by the organisation prior to completion of treatment or other factors
    prevented treatment being completed.
  
  *Episode End Date* interacts with two other data items in the PMHC MDS - *Service
  Contact - Final*, and *Episode Completion Status*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact - Final*
    item that requires the service provider to indicate whether further *Service
    Contacts* are planned. Where this item is recorded as ‘no further services
    planned’, the date of the final *Service Contact* should be recorded as the
    *Episode End Date*.
  
  *Episode Completion Status*
    This field should be recorded as 'Episode closed treatment concluded' when a
    *Service Contact - Final* is recorded. The *Episode Completion Status* field
    can also be manually recorded to allow for administrative closure of episodes
    (e.g., contact has been lost with a client over a prolonged period - see
    *Episode Completion Status* for additional guidance). Where an episode is
    closed administratively, the *Episode End Date* should be recorded as the
    date on which the organisation made the decision to close episode.
  

:METeOR: `730859 <http://meteor.aihw.gov.au/content/index.phtml/itemId/730859>`__

----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each PMHC MDS episode. The Episode Key is unique and stable for each episode at the level of the organisation. This key must link to an existing episode within the PMHC MDS.

:Field name: episode_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Episode Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of episode keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate episode identifiers since they can
  never clash. See :ref:`Managing Episode Keys <unique_keys>`
  
  Episode Keys are case sensitive and must be valid unicode characters.
  
  A recommended approach for the creation of Episode Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-episode_organisation_path:

Episode Organisation Path
^^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing the clinical service to the client.

:Field name: episode_organisation_path

:Data type: string

:Required: yes

:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-episode_tags:

Episode Tags
^^^^^^^^^^^^

List of tags for the episode.

:Field name: episode_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-est_date_of_birth:

Estimated Date of Birth Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date of birth estimate flag records whether or not the client's date of birth has been estimated.

:Field name: est_date_of_birth

:Data type: string

:Required: yes

:Domain:
  :1: Date of birth is accurate
  :2: Date of birth is an estimate
  :8: Date of birth is a 'dummy' date (ie, 09099999)
  :9: Accuracy of stated date of birth is not known

----------

.. _dfn-service_contact_final:

Final Service Contact
^^^^^^^^^^^^^^^^^^^^^

An indication of whether the Service Contact is the final for the current Episode of Care

:Field name: service_contact_final

:Data type: string

:Required: yes

:Domain:
  :1: No further services are planned for the client in the current episode
  :2: Further services are planned for the client in the current episode
  :3: Not known at this stage

:Notes:
  Service providers should report this item on the basis of future planned or
  scheduled contacts with the client. Where this item is recorded as 1 (No
  further services planned), the episode should be recorded as completed by:
  
  - the date of the final Service Contact should be recorded as the Episode End
    Date
  - the Episode Completion Status field should be recorded as ‘Treatment
    concluded.
  
  Note that no further Service Contacts can be recorded against an
  episode once it is marked as completed. Where an episode has been marked as
  completed prematurely, the Episode End Date can be manually corrected to allow
  additional activity to be recorded.
  

----------

.. _dfn-funding_source:

Funding Source
^^^^^^^^^^^^^^

The source of PHN Mental Health funds that are wholly or primarily funding the Service Contact.

:Field name: funding_source

:Data type: string

:Required: yes

:Domain:
  :0: Flexible funding pool - Not Otherwise Stated
  :11: Flexible funding pool - Low intensity
  :12: Flexible funding pool - Youth Severe
  :13: Flexible funding pool - Child and Youth
  :14: Flexible funding pool - Psychological therapies for hard to reach
  :15: Flexible funding pool - Services for People with Severe Mental Illness
  :16: Flexible funding pool - Suicide Prevention - Indigenous
  :17: Flexible funding pool - Suicide Prevention - General
  :18: Indigenous Mental Health
  :19: Commonwealth Psychosocial Support
  :20: Psychological Treatment in Residential Aged Care Facilities
  :21: Emergency Response - Bushfire Recovery 2020
  :22: Emergency Response - Flood 2022
  :23: Head to Health program
  :24: Head to Health Kids Hubs
  :25: Norfolk Island
  :26: National Suicide Prevention Trial
  :27: Way Back Support Service
  :97: Other funding source – no Commonwealth Funding
  :98: Unknown/Not stated

:Notes:
  Organisations must record this information for all new Service Contacts
  under the Version 4 specification.
  
  0 - Flexible funding pool - Not Otherwise Stated
    This response is only to be used for existing data entered under a Version 2
    or HeadtoHelp Version 3 specification.
  
  23 - Head to Health program
    This includes Head to Health Adult Centres and Satellites, and pop-up clinics.
  
  25 - Norfolk Island
    This category only applies to services commissioned through the
    Central and Eastern Sydney PHN.
  
  27 - Way Back Support Service
    This category must only to be used in conjunction with the Wayback Extension.
  
  97 - Other funding source - no Commonwealth Funding
    This category can only to be used where a service is wholly funded by a
    non-PHN funding source such as State/Territory jurisdictional funds.
  
    Where a service is co-funded by both PHN funds and State/Territory
    jurisdictional funds, the appropriate Funding Source category for PHN
    funding used to pay for the service should be selected unless otherwise
    advised by relevant guidance from the Department. Tags and/or other
    reporting measures can be used to differentiate co-funded arrangements.
  

----------

.. _dfn-mental_health_treatment_plan:

GP Mental Health Treatment Plan Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether a client has a GP mental health treatment plan. A GP should be involved in a referral where appropriate however a mental health treatment plan is not mandatory.

:Field name: mental_health_treatment_plan

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Unknown
  :9: Not stated/inadequately described

----------

.. _dfn-health_care_card:

Health Care Card
^^^^^^^^^^^^^^^^

An indication of whether the person is a current holder of a Health Care Card that entitles them to arrange of concessions for Government funded health services.

:Field name: health_care_card

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Not Known
  :9: Not stated

:Notes:
  Details on the Australian Government Health Care Card are available at:
  https://www.humanservices.gov.au/customer/services/centrelink/health-care-card
  

:METeOR: `605149 <http://meteor.aihw.gov.au/content/index.phtml/itemId/605149>`__

----------

.. _dfn-homelessness:

Homelessness Flag
^^^^^^^^^^^^^^^^^

An indication of whether the client has been homeless in the 4 weeks prior to the current service episode.

:Field name: homelessness

:Data type: string

:Required: yes

:Domain:
  :1: Sleeping rough or in non-conventional accommodation
  :2: Short-term or emergency accommodation
  :3: Not homeless
  :9: Not stated / Missing

:Notes:
  1	- Sleeping rough or in non-conventional accommodation
    Includes sleeping on the streets, in a park, in cars or railway carriages,
    under bridges or other similar ‘rough’ accommodation
  
  2	- Short-term or emergency accommodation
    Includes sleeping in short-term accommodation, emergency accommodation, due
    to a lack of other options. This may include refuges; crisis shelters; couch
    surfing; living temporarily with friends and relatives; insecure
    accommodation on a short term basis; emergency accommodation arranged in
    hotels, motels etc by a specialist homelessness agency.
  
  3	- Not homeless
    Includes sleeping in own accommodation/rental accommodation or living with
    friends or relatives on a stable, long term basis
  
  9	- Not stated / Missing
    Not stated / Missing
  
  Select the code that best fits the client’s sleeping arrangements over the
  preceding 4 weeks. Where multiple options apply (e.g., client has experienced
  more than one of the sleeping arrangements over the previous 4 weeks) the
  following coding hierarchy should be followed:
  
  - If code 1 applied at any time over the 4 week period, code 1
  - If code 2 but not code 1 applied at any time over the 4 week period, code 2
  - Otherwise Code 3 applies
  

----------

.. _dfn-iar_dst_domain_1:

IAR-DST - Domain 1 - Symptom Severity and Distress (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should examine severity of symptoms, distress and previous history of mental illness. Severity of current symptoms and associated levels of distress are important factors in assigning a level of care and making a referral decision. Assessing changes in symptom severity and distress also forms an important part of outcome monitoring.

:Field name: iar_dst_domain_1

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Mild or sub diagnostic
  :2: Moderate
  :3: Severe
  :4: Very severe

:Notes:
  Please refer to `IAR-DST Domain 1 - Symptom Severity and Distress (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-1.html>`_
  

----------

.. _dfn-iar_dst_domain_2:

IAR-DST - Domain 2 - Risk of Harm (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should include an evaluation of risk to determine a person’s potential for harm to self or others. Results from this assessment are of fundamental importance in deciding the appropriate level of care required.

:Field name: iar_dst_domain_2

:Data type: string

:Required: yes

:Domain:
  :0: No identified risk in this domain
  :1: Low risk of harm
  :2: Moderate risk of harm
  :3: High risk of harm
  :4: Very high risk of harm

:Notes:
  Please refer to `IAR-DST Domain 2 - Risk of Harm (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-2.html>`_
  

----------

.. _dfn-iar_dst_domain_3:

IAR-DST - Domain 3 - Functioning (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An initial assessment should consider functional impairment caused by or exacerbated by the mental health condition. While other types of disabilities may play a role in determining what types of support services may be required, they should generally not be considered in determining mental health intervention intensity within a stepped care continuum.

:Field name: iar_dst_domain_3

:Data type: string

:Required: yes

:Domain:
  :0: No problems in this domain
  :1: Mild impact
  :2: Moderate impact
  :3: Severe impact
  :4: Very severe to extreme impact

:Notes:
  Please refer to `IAR-DST Domain 3 - Functioning (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-3.html>`_
  

----------

.. _dfn-iar_dst_domain_4:

IAR-DST - Domain 4 - Impact of Co-existing Conditions (Primary Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Increasingly, individuals are experiencing and managing multi-morbidity (coexistence of multiple conditions including chronic disease). An initial assessment should specifically examine the presence of other concurrent health conditions that contribute to (or have the potential to contribute to) increased severity of mental health problems and/or compromises the person’s ability to participate in the recommended treatment.

:Field name: iar_dst_domain_4

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Minor impact
  :2: Moderate impact
  :3: Severe impact
  :4: Very severe impact

:Notes:
  Please refer to `IAR-DST Domain 4 - Impact of Co-existing Conditions (Primary Domain) <https://docs.iar-dst.online/en/latest/domains/domain-4.html>`_
  

----------

.. _dfn-iar_dst_domain_5:

IAR-DST - Domain 5 - Treatment and Recovery History (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should explore the individual’s relevant treatment history and their response to previous treatment. Response to previous treatment is a reasonable predictor of future treatment need and is particularly important when determining appropriateness of lower intensity services.

:Field name: iar_dst_domain_5

:Data type: string

:Required: yes

:Domain:
  :0: No prior treatment history
  :1: Full recovery with previous treatment
  :2: Moderate recovery with previous treatment
  :3: Minor recovery with previous treatment
  :4: Negligible recovery with previous treatment

:Notes:
  Please refer to `IAR-DST Domain 5 - Treatment and Recovery History (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-5.html>`_
  

----------

.. _dfn-iar_dst_domain_6:

IAR-DST - Domain 6 - Social and Environmental Stressors (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should consider how the person’s environment might contribute to the onset or maintenance of a mental health condition. Significant situational or social complexities can lead to increased condition severity and/or compromise ability to participate in the recommended treatment. Unresolved situational or social complexities can limit the likely benefit of treatment. Furthermore, understanding the complexities experienced by the individual (with carer/support person perspectives if available), may alter the type of service offered, or indicate that additional service referrals may be required (e.g., a referral to an emergency housing provider).

:Field name: iar_dst_domain_6

:Data type: string

:Required: yes

:Domain:
  :0: No problem in this domain
  :1: Mildly stressful environment
  :2: Moderately stressful environment
  :3: Highly stressful environment
  :4: Extremely stressful environment

:Notes:
  Please refer to `IAR-DST Domain 6 - Social and Environmental Stressors (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-6.html>`_
  

----------

.. _dfn-iar_dst_domain_7:

IAR-DST - Domain 7 - Family and Other Supports (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should consider whether informal supports are present and their potential to contribute to recovery. A lack of supports might contribute to the onset or maintenance of the mental health condition and/or compromise ability to participate in the recommended treatment.

:Field name: iar_dst_domain_7

:Data type: string

:Required: yes

:Domain:
  :0: Highly supported
  :1: Well supported
  :2: Limited supports
  :3: Minimal supports
  :4: No supports

:Notes:
  Please refer to `IAR-DST Domain 7 - Family and Other Supports (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-7.html>`_
  

----------

.. _dfn-iar_dst_domain_8:

IAR-DST - Domain 8 - Engagement and Motivation (Contextual Domain)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This initial assessment domain should explore the person’s understanding of the mental health condition and their willingness to engage in or accept treatment.

:Field name: iar_dst_domain_8

:Data type: string

:Required: yes

:Domain:
  :0: Optimal
  :1: Positive
  :2: Limited
  :3: Minimal
  :4: Disengaged

:Notes:
  Please refer to `IAR-DST Domain 8 - Engagement and Motivation (Contextual Domain) <https://docs.iar-dst.online/en/latest/domains/domain-8.html>`_
  

----------

.. _dfn-iar_dst_practitioner_level_of_care:

IAR-DST - Practitioner Level of Care
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The individualised level of care assessed by the practitioner for the referral

:Field name: iar_dst_practitioner_level_of_care

:Data type: string

:Required: yes

:Domain:
  :1: Level 1 - Self Management
  :2: Level 2 - Low Intensity Services
  :3: Level 3 - Moderate Intensity Services
  :4: Level 4 - High Intensity Services
  :5: Level 5 - Acute and Specialist Community Mental Health Services
  :9: Not stated

:Notes:
  Please refer to `IAR-DST Levels of Care <https://docs.iar-dst.online/en/latest/level-of-care/index.html>`_
  
  This field was added on 25/2/2021. IAR-DST data entered into the PMHC-MDS
  before 25/2/2021 will have the Practitioner Level of Care set to 9: Missing.
  All data entered after 25/2/2021 must use responses 1-5.
  

----------

.. _dfn-iar_dst_recommended_level_of_care:

IAR-DST - Recommended Level of Care
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The information gathered through the initial assessment is used to assign a recommended level of care and inform a referral decision. The levels of care are not intended to replace individualised assessment and care - rather to provide information to guide decision making.

:Field name: iar_dst_recommended_level_of_care

:Data type: string

:Required: yes

:Domain:
  :1: Level 1 - Self Management
  :1+: Level 1 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :2: Level 2 - Low Intensity Services
  :2+: Level 2 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :3: Level 3 - Moderate Intensity Services
  :3+: Level 3 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :4: Level 4 - High Intensity Services
  :4+: Level 4 or above - Review assessment on Contextual Domains to determine most appropriate placement
  :5: Level 5 - Acute and Specialist Community Mental Health Services

:Notes:
  Please refer to `IAR-DST Levels of Care <https://docs.iar-dst.online/en/latest/level-of-care/index.html>`_
  

----------

.. _dfn-iar_dst_tags:

IAR-DST - Tags
^^^^^^^^^^^^^^

List of tags for the measure.

:Field name: iar_dst_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-iar_dst_version:

IAR-DST - Version
^^^^^^^^^^^^^^^^^

The version of the IAR-DST collected.

:Field name: iar_dst_version

:Data type: string

:Required: yes

:Domain:
  :1: DST specified by National PHN Guidance Initial Assessment and Referral for Mental Healthcare version 1.05

----------

.. _dfn-intake_key:

Intake Key
^^^^^^^^^^

This is a number or code assigned to each intake. The Intake Key is unique and stable for each intake at the level of the organisation.

:Field name: intake_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Intake Keys must be generated by the organisation to be unique at the provider
  organisation level and must persist across time. Creation of intake keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate intake identifiers since they can
  never clash.
  
  A recommended approach for the creation of Intake Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-intake_organisation_path:

Intake Organisation Path
^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing the intake to the client.

:Field name: intake_organisation_path

:Data type: string

:Required: yes

:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-intake_tags:

Intake Tags
^^^^^^^^^^^

List of tags for the intake.

:Field name: intake_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_interpreter:

Interpreter Used
^^^^^^^^^^^^^^^^

Whether an interpreter service was used during the Service Contact

:Field name: service_contact_interpreter

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated

:Notes:
  Interpreter services includes verbal language, non-verbal language and
  languages other than English.
  
  1 - Yes
    Use this code where interpreter services were used during the Service
    Contact. Use of interpreter services for any form of sign language or other
    forms of non-verbal communication should be coded as Yes.
  
  2 - No
    Use this code where interpreter services were not used during the Service
    Contact.
  
  9 - Not stated
    Indicates that the item was not collected. This item should not appear as an
    option for clinicians, it is for administrative use only.
  

----------

.. _dfn-key:

Key
^^^

A metadata key name.

:Field name: key

:Data type: string

:Required: yes

:Notes:
  Current allowed metadata keys are `type` and `version`.
  
  Please refer to :ref:`metadata-format` for an example of the metadata file/worksheet that
  must be used with this specification.
  

----------

.. _dfn-k5_item1:

K5 - Question 1
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel nervous?

:Field name: k5_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item2:

K5 - Question 2
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel without hope?

:Field name: k5_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item3:

K5 - Question 3
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel restless or jumpy?

:Field name: k5_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item4:

K5 - Question 4
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel everything was an effort?

:Field name: k5_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item5:

K5 - Question 5
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel so sad that nothing could cheer you up?

:Field name: k5_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_score:

K5 - Score
^^^^^^^^^^

The overall K5 score.

:Field name: k5_score

:Data type: integer

:Required: yes

:Domain:
  5 - 25, 99 = Not stated / Missing

:Notes:
  The K5 Total score is based on the sum of K5 item 1 through 5 (range: 5-25).
  
  The Total score is computed as the sum of the item scores. If any item has not
  been completed (that is, has not been coded 1, 2, 3, 4, 5), it is excluded from
  the calculation and not counted as a valid item. If any item is missing, the
  Total Score is set as missing.
  
  For the Total score, the missing value used should be 99.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’
  

----------

.. _dfn-k5_tags:

K5 - Tags
^^^^^^^^^

List of tags for the measure.

:Field name: k5_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-k10p_item1:

K10+ - Question 1
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel tired out for no good reason?

:Field name: k10p_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item2:

K10+ - Question 2
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel nervous?

:Field name: k10p_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item3:

K10+ - Question 3
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel so nervous that nothing could calm you down?

:Field name: k10p_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item4:

K10+ - Question 4
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel hopeless?

:Field name: k10p_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item5:

K10+ - Question 5
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel restless or fidgety?

:Field name: k10p_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item6:

K10+ - Question 6
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so restless you could not sit still?

:Field name: k10p_item6

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item7:

K10+ - Question 7
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel depressed?

:Field name: k10p_item7

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item8:

K10+ - Question 8
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel that everything was an effort?

:Field name: k10p_item8

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item9:

K10+ - Question 9
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so sad that nothing could cheer you up?

:Field name: k10p_item9

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item10:

K10+ - Question 10
^^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel worthless?

:Field name: k10p_item10

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item11:

K10+ - Question 11
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many days were you totally unable to work, study or manage your day to day activities because of these feelings?

:Field name: k10p_item11

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time', 
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item12:

K10+ - Question 12
^^^^^^^^^^^^^^^^^^

Aside from those days, in the past four weeks, how many days were you able to work or study or manage your day to day activities, but had to cut down on what you did because of these feelings?

:Field name: k10p_item12

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item13:

K10+ - Question 13
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many times have you seen a doctor or any other health professional about these feelings?

:Field name: k10p_item13

:Data type: integer

:Required: yes

:Domain:
  0 - 89, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item14:

K10+ - Question 14
^^^^^^^^^^^^^^^^^^

In the past four weeks, how often have physical health problems been the main cause of these feelings?

:Field name: k10p_item14

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_score:

K10+ - Score
^^^^^^^^^^^^

The overall K10 score.

:Field name: k10p_score

:Data type: integer

:Required: yes

:Domain:
  10 - 50, 99 = Not stated / Missing

:Notes:
  The K10 Total score is based on the sum of K10 item 01 through 10 (range: 10-50).
  Items 11 through 14 are excluded from the total because they are separate
  measures of disability associated with the problems referred to in the preceding
  ten items.
  
  The Total score is computed as the sum of the scores for items 1 to 10. If any
  item has not been completed (that is, has not been coded 1, 2, 3, 4, 5), it is
  excluded from the total
  
  When items 01 through 10 has one item "not stated/missing" (value 9), the Total
  Score is pro-rated using the following formula:
  
     Total score = round( sum of valid item scores / 9 * 10 )
  
  When items 01 through 10 has more than one item "not stated/missing" (value 9),
  the Total Score is set as invalid. Where this is the case, the "not stated/missing"
  (value 99) should be used.
  
  For more information on scoring the K10+, please refer to page 58 of AMHOCN’s
  Overview of clinician-rated and consumer self-report measures at https://www.amhocn.org/sites/default/files/publication_files/nocc_clinician_and_self-report_measures_overview_v2.1_20210913_1.pdf
  
  When upload report individual item scores and use a Total Score
  ‘99 - Not stated / Missing’, the PMHC MDS will calculate the total score.
  

----------

.. _dfn-k10p_tags:

K10+ - Tags
^^^^^^^^^^^

List of tags for the measure.

:Field name: k10p_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-labour_force_status:

Labour Force Status
^^^^^^^^^^^^^^^^^^^

The self-reported status the person currently has in being either in the labour force (employed/unemployed) or not in the labour force, as represented by a code.

:Field name: labour_force_status

:Data type: string

:Required: yes

:Domain:
  :1: Employed
  :2: Unemployed
  :3: Not in the Labour Force
  :9: Not stated/inadequately described

:Notes:
  1 - Employed
    Employed persons are those aged 15 years and over who met one of the following
    criteria during the reference week:
  
    - Worked for one hour or more for pay, profit, commission or payment in kind,
      in a job or business or son a farm (employees and owner managers of
      incorporated or unincorporated enterprises).
    - Worked for one hour or more without pay in a family business or on a farm
      (contributing family workers).
    - Were employees who had a job but were not at work and were:
  
      - away from work for less than four weeks up to the end of the reference
        week; or
      - away from work for more than four weeks up to the end of the reference
        week and
      - received pay for some or all of the four week period to the end of the
        reference week; or
      - away from work as a standard work or shift arrangement; or
      - on strike or locked out; or
      - on workers’ compensation and expected to return to their job.
    - Were owner managers who had a job, business or farm, but were not at work.
  
  2 - Unemployed
    Unemployed persons are those aged 15 years and over who were not employed
    during the reference week, and:
  
    - had actively looked for full time or part time work at any time in the
      four weeks up to the end of the reference week and were available for
      work in the reference week; or
    - were waiting to start a new job within four weeks from the end of the
      reference week and could have started in the reference week if the job
      had been available then.
  
  Actively looked for work includes:
  
    - written, telephoned or applied to an employer for work;
    - had an interview with an employer for work;
    - answered an advertisement for a job;
    - checked or registered with a Job Services Australia provider or any other
      employment agency;
    - taken steps to purchase or start your own business;
    - advertised or tendered for work; and
    - contacted friends or relatives in order to obtain work.
  
  3 - Not in the labour force
    Persons not in the labour force are those aged 15 years and over who were
    not in the categories employed or unemployed, as defined, during the
    reference week. They include people who undertook unpaid household duties
    or other voluntary work only, were retired, voluntarily inactive and those
    permanently unable to work.
  
  9 - Not stated/inadequately described
    Includes children under 15 (0-14 years)
  

:METeOR: `621450 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621450>`__

----------

.. _dfn-organisation_legal_name:

Legal Name
^^^^^^^^^^

The legal name of the provider organisation.

:Field name: organisation_legal_name

:Data type: string

:Required: no

----------

.. _dfn-main_lang_at_home:

Main Language Spoken at Home
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The language reported by a client as the main language other than English spoken by that client in his/her home (or most recent private residential setting occupied by the client) to communicate with other residents of the home or setting and regular visitors, as represented by a code.

:Field name: main_lang_at_home

:Data type: string (4)

:Required: yes

:Domain:
  :1101: Gaelic (Scotland)
  :1102: Irish
  :1103: Welsh
  :1199: Celtic, nec
  :1201: English
  :1301: German
  :1302: Letzeburgish
  :1303: Yiddish
  :1401: Dutch
  :1402: Frisian
  :1403: Afrikaans
  :1501: Danish
  :1502: Icelandic
  :1503: Norwegian
  :1504: Swedish
  :1599: Scandinavian, nec
  :1601: Estonian
  :1602: Finnish
  :1699: Finnish and Related Languages, nec
  :2101: French
  :2201: Greek
  :2301: Catalan
  :2302: Portuguese
  :2303: Spanish
  :2399: Iberian Romance, nec
  :2401: Italian
  :2501: Maltese
  :2901: Basque
  :2902: Latin
  :2999: Other Southern European Languages, nec
  :3101: Latvian
  :3102: Lithuanian
  :3301: Hungarian
  :3401: Belorussian
  :3402: Russian
  :3403: Ukrainian
  :3501: Bosnian
  :3502: Bulgarian
  :3503: Croatian
  :3504: Macedonian
  :3505: Serbian
  :3506: Slovene
  :3507: Serbo-Croatian/Yugoslavian, so described
  :3601: Czech
  :3602: Polish
  :3603: Slovak
  :3604: Czechoslovakian, so described
  :3901: Albanian
  :3903: Aromunian (Macedo-Romanian)
  :3904: Romanian
  :3905: Romany
  :3999: Other Eastern European Languages, nec
  :4101: Kurdish
  :4102: Pashto
  :4104: Balochi
  :4105: Dari
  :4106: Persian (excluding Dari)
  :4107: Hazaraghi
  :4199: Iranic, nec
  :4202: Arabic
  :4204: Hebrew
  :4206: Assyrian Neo-Aramaic
  :4207: Chaldean Neo-Aramaic
  :4208: Mandaean (Mandaic)
  :4299: Middle Eastern Semitic Languages, nec
  :4301: Turkish
  :4302: Azeri
  :4303: Tatar
  :4304: Turkmen
  :4305: Uygur
  :4306: Uzbek
  :4399: Turkic, nec
  :4901: Armenian
  :4902: Georgian
  :4999: Other Southwest and Central Asian Languages, nec
  :5101: Kannada
  :5102: Malayalam
  :5103: Tamil
  :5104: Telugu
  :5105: Tulu
  :5199: Dravidian, nec
  :5201: Bengali
  :5202: Gujarati
  :5203: Hindi
  :5204: Konkani
  :5205: Marathi
  :5206: Nepali
  :5207: Punjabi
  :5208: Sindhi
  :5211: Sinhalese
  :5212: Urdu
  :5213: Assamese
  :5214: Dhivehi
  :5215: Kashmiri
  :5216: Oriya
  :5217: Fijian Hindustani
  :5299: Indo-Aryan, nec
  :5999: Other Southern Asian Languages
  :6101: Burmese
  :6102: Chin Haka
  :6103: Karen
  :6104: Rohingya
  :6105: Zomi
  :6199: Burmese and Related Languages, nec
  :6201: Hmong
  :6299: Hmong-Mien, nec
  :6301: Khmer
  :6302: Vietnamese
  :6303: Mon
  :6399: Mon-Khmer, nec
  :6401: Lao
  :6402: Thai
  :6499: Tai, nec
  :6501: Bisaya
  :6502: Cebuano
  :6503: IIokano
  :6504: Indonesian
  :6505: Malay
  :6507: Tetum
  :6508: Timorese
  :6511: Tagalog
  :6512: Filipino
  :6513: Acehnese
  :6514: Balinese
  :6515: Bikol
  :6516: Iban
  :6517: Ilonggo (Hiligaynon)
  :6518: Javanese
  :6521: Pampangan
  :6599: Southeast Asian Austronesian Languages, nec
  :6999: Other Southeast Asian Languages
  :7101: Cantonese
  :7102: Hakka
  :7104: Mandarin
  :7106: Wu
  :7107: Min Nan
  :7199: Chinese, nec
  :7201: Japanese
  :7301: Korean
  :7901: Tibetan
  :7902: Mongolian
  :7999: Other Eastern Asian Languages, nec
  :8101: Anindilyakwa
  :8111: Maung
  :8113: Ngan'gikurunggurr
  :8114: Nunggubuyu
  :8115: Rembarrnga
  :8117: Tiwi
  :8121: Alawa
  :8122: Dalabon
  :8123: Gudanji
  :8127: Iwaidja
  :8128: Jaminjung
  :8131: Jawoyn
  :8132: Jingulu
  :8133: Kunbarlang
  :8136: Larrakiya
  :8137: Malak Malak
  :8138: Mangarrayi
  :8141: Maringarr
  :8142: Marra
  :8143: Marrithiyel
  :8144: Matngala
  :8146: Murrinh Patha
  :8147: Na-kara
  :8148: Ndjebbana (Gunavidji)
  :8151: Ngalakgan
  :8152: Ngaliwurru
  :8153: Nungali
  :8154: Wambaya
  :8155: Wardaman
  :8156: Amurdak
  :8157: Garrwa
  :8158: Kuwema
  :8161: Marramaninyshi
  :8162: Ngandi
  :8163: Waanyi
  :8164: Wagiman
  :8165: Yanyuwa
  :8166: Marridan (Maridan)
  :8171: Gundjeihmi
  :8172: Kune
  :8173: Kuninjku
  :8174: Kunwinjku
  :8175: Mayali
  :8179: Kunwinjkuan, nec
  :8181: Burarra
  :8182: Gun-nartpa
  :8183: Gurr-goni
  :8189: Burarran, nec
  :8199: Arnhem Land and Daly River Region Languages, nec
  :8211: Galpu
  :8212: Golumala
  :8213: Wangurri
  :8219: Dhangu, nec
  :8221: Dhalwangu
  :8222: Djarrwark
  :8229: Dhay'yi, nec
  :8231: Djambarrpuyngu
  :8232: Djapu
  :8233: Daatiwuy
  :8234: Marrangu
  :8235: Liyagalawumirr
  :8236: Liyagawumirr
  :8239: Dhuwal, nec
  :8242: Gumatj
  :8243: Gupapuyngu
  :8244: Guyamirrilili
  :8246: Manggalili
  :8247: Wubulkarra
  :8249: Dhuwala, nec
  :8251: Wurlaki
  :8259: Djinang, nec
  :8261: Ganalbingu
  :8262: Djinba
  :8263: Manyjalpingu
  :8269: Djinba, nec
  :8271: Ritharrngu
  :8272: Wagilak
  :8279: Yakuy, nec
  :8281: Nhangu
  :8282: Yan-nhangu
  :8289: Nhangu, nec
  :8291: Dhuwaya
  :8292: Djangu
  :8293: Madarrpa
  :8294: Warramiri
  :8295: Rirratjingu
  :8299: Other Yolngu Matha, nec
  :8301: Kuku Yalanji
  :8302: Guugu Yimidhirr
  :8303: Kuuku-Ya'u
  :8304: Wik Mungkan
  :8305: Djabugay
  :8306: Dyirbal
  :8307: Girramay
  :8308: Koko-Bera
  :8311: Kuuk Thayorre
  :8312: Lamalama
  :8313: Yidiny
  :8314: Wik Ngathan
  :8315: Alngith
  :8316: Kugu Muminh
  :8317: Morrobalama
  :8318: Thaynakwith
  :8321: Yupangathi
  :8322: Tjungundji
  :8399: Cape York Peninsula Languages, nec
  :8401: Kalaw Kawaw Ya/Kalaw Lagaw Ya
  :8402: Meriam Mir
  :8403: Yumplatok (Torres Strait Creole)
  :8504: Bilinarra
  :8505: Gurindji
  :8506: Gurindji Kriol
  :8507: Jaru
  :8508: Light Warlpiri
  :8511: Malngin
  :8512: Mudburra
  :8514: Ngardi
  :8515: Ngarinyman
  :8516: Walmajarri
  :8517: Wanyjirra
  :8518: Warlmanpa
  :8521: Warlpiri
  :8522: Warumungu
  :8599: Northern Desert Fringe Area Languages, nec
  :8603: Alyawarr
  :8606: Kaytetye
  :8607: Antekerrepenh
  :8611: Central Anmatyerr
  :8612: Eastern Anmatyerr
  :8619: Anmatyerr, nec
  :8621: Eastern Arrernte
  :8622: Western Arrarnta
  :8629: Arrernte, nec
  :8699: Arandic, nec
  :8703: Antikarinya
  :8704: Kartujarra
  :8705: Kukatha
  :8706: Kukatja
  :8707: Luritja
  :8708: Manyjilyjarra
  :8711: Martu Wangka
  :8712: Ngaanyatjarra
  :8713: Pintupi
  :8714: Pitjantjatjara
  :8715: Wangkajunga
  :8716: Wangkatha
  :8717: Warnman
  :8718: Yankunytjatjara
  :8721: Yulparija
  :8722: Tjupany
  :8799: Western Desert Languages, nec
  :8801: Bardi
  :8802: Bunuba
  :8803: Gooniyandi
  :8804: Miriwoong
  :8805: Ngarinyin
  :8806: Nyikina
  :8807: Worla
  :8808: Worrorra
  :8811: Wunambal
  :8812: Yawuru
  :8813: Gambera
  :8814: Jawi
  :8815: Kija
  :8899: Kimberley Area Languages, nec
  :8901: Adnymathanha
  :8902: Arabana
  :8903: Bandjalang
  :8904: Banyjima
  :8905: Batjala
  :8906: Bidjara
  :8907: Dhanggatti
  :8908: Diyari
  :8911: Gamilaraay
  :8913: Garuwali
  :8914: Githabul
  :8915: Gumbaynggir
  :8916: Kanai
  :8917: Karajarri
  :8918: Kariyarra
  :8921: Kaurna
  :8922: Kayardild
  :8924: Kriol
  :8925: Lardil
  :8926: Mangala
  :8927: Muruwari
  :8928: Narungga
  :8931: Ngarluma
  :8932: Ngarrindjeri
  :8933: Nyamal
  :8934: Nyangumarta
  :8935: Nyungar
  :8936: Paakantyi
  :8937: Palyku/Nyiyaparli
  :8938: Wajarri
  :8941: Wiradjuri
  :8943: Yindjibarndi
  :8944: Yinhawangka
  :8945: Yorta Yorta
  :8946: Baanbay
  :8947: Badimaya
  :8948: Barababaraba
  :8951: Dadi Dadi
  :8952: Dharawal
  :8953: Djabwurrung
  :8954: Gudjal
  :8955: Keerray-Woorroong
  :8956: Ladji Ladji
  :8957: Mirning
  :8958: Ngatjumaya
  :8961: Waluwarra
  :8962: Wangkangurru
  :8963: Wargamay
  :8964: Wergaia
  :8965: Yugambeh
  :8998: Aboriginal English, so described
  :8999: Other Australian Indigenous Languages, nec
  :9101: American Languages
  :9201: Acholi
  :9203: Akan
  :9205: Mauritian Creole
  :9206: Oromo
  :9207: Shona
  :9208: Somali
  :9211: Swahili
  :9212: Yoruba
  :9213: Zulu
  :9214: Amharic
  :9215: Bemba
  :9216: Dinka
  :9217: Ewe
  :9218: Ga
  :9221: Harari
  :9222: Hausa
  :9223: Igbo
  :9224: Kikuyu
  :9225: Krio
  :9226: Luganda
  :9227: Luo
  :9228: Ndebele
  :9231: Nuer
  :9232: Nyanja (Chichewa)
  :9233: Shilluk
  :9234: Tigre
  :9235: Tigrinya
  :9236: Tswana
  :9237: Xhosa
  :9238: Seychelles Creole
  :9241: Anuak
  :9242: Bari
  :9243: Bassa
  :9244: Dan (Gio-Dan)
  :9245: Fulfulde
  :9246: Kinyarwanda (Rwanda)
  :9247: Kirundi (Rundi)
  :9248: Kpelle
  :9251: Krahn
  :9252: Liberian (Liberian English)
  :9253: Loma (Lorma)
  :9254: Lumun (Kuku Lumun)
  :9255: Madi
  :9256: Mandinka
  :9257: Mann
  :9258: Moro (Nuba Moro)
  :9261: Themne
  :9262: Lingala
  :9299: African Languages, nec
  :9301: Fijian
  :9302: Gilbertese
  :9303: Maori (Cook Island)
  :9304: Maori (New Zealand)
  :9306: Nauruan
  :9307: Niue
  :9308: Samoan
  :9311: Tongan
  :9312: Rotuman
  :9313: Tokelauan
  :9314: Tuvaluan
  :9315: Yapese
  :9399: Pacific Austronesian Languages, nec
  :9402: Bislama
  :9403: Hawaiian English
  :9404: Norf'k-Pitcairn
  :9405: Solomon Islands Pijin
  :9499: Oceanian Pidgins and Creoles, nec
  :9502: Kiwai
  :9503: Motu (HiriMotu)
  :9504: Tok Pisin (Neomelanesian)
  :9599: Papua New Guinea Languages, nec
  :9601: Invented Languages
  :9701: Auslan
  :9702: Key Word Sign Australia
  :9799: Sign Languages, nec
  :9999: Unknown

:Notes:
  `Australian Standard Classification of Languages (ASCL), 2016 4-digit code (ABS
  Catalogue No. 1267.0) <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`_
  or 9999 if info is not known or client refuses to supply.
  
  The ABS recommends the following question in order to collect this data:
  Which language does the client mainly speak at home? (If more than one
  language, indicate the one that is spoken most often.)
  
  Organisations are encouraged to produce customised lists of the most common
  countries based on their local populations from the above resource. Please
  refer to :ref:`form_main_lang_at_home` for help on designing forms.
  

:METeOR: `460125 <http://meteor.aihw.gov.au/content/index.phtml/itemId/460125>`__

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0 <http://www.abs.gov.au/ausstats/abs@.nsf/mf/1267.0>`__

----------

.. _dfn-marital_status:

Marital Status
^^^^^^^^^^^^^^

A person's current relationship status in terms of a couple relationship or, for those not in a couple relationship, the existence of a current or previous registered marriage, as represented by a code.

:Field name: marital_status

:Data type: string

:Required: yes

:Domain:
  :1: Never married
  :2: Widowed
  :3: Divorced
  :4: Separated
  :5: Married (registered and de facto)
  :6: Not stated/inadequately described

:Notes:
  Refers to the current marital status of a person.
  
  2 - Widowed
    This code usually refers to registered marriages but when self-reported may
    also refer to de facto marriages.
  
  4 - Separated
    This code refers to registered marriages but when self-reported may also
    refer to de facto marriages.
  
  5 - Married (registered and de facto)
    Includes people who have been divorced or widowed but have since
    re-married, and should be generally accepted as applicable to all de facto
    couples, including of the same sex.
  
  6 - Not stated/inadequately described
    This code is not for use on primary collection forms. It is primarily for
    use in administrative collections when transferring data from data sets
    where the item has not been collected.
  

:METeOR: `291045 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291045>`__

----------

.. _dfn-measure_key:

Measure Key
^^^^^^^^^^^

This is a number or code assigned to each instance of a measure. The Measure Key is unique and stable for each instance of a measure at the level of the organisation.

:Field name: measure_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Measure keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-medication_antidepressants:

Medication - Antidepressants (N06A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antidepressants for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antidepressants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N06A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the depressive disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06A
  

----------

.. _dfn-medication_antipsychotics:

Medication - Antipsychotics (N05A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antipsychotics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antipsychotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of psychotic
  disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05A
  

----------

.. _dfn-medication_anxiolytics:

Medication - Anxiolytics (N05B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed anxiolytics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_anxiolytics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of disorders
  associated with anxiety and tension.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05B
  

----------

.. _dfn-medication_hypnotics:

Medication - Hypnotics and sedatives (N05C)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed hypnotics and sedatives for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_hypnotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05C class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to have mainly sedative or hypnotic
  actions. Hypnotic drugs are used to induce sleep and treat severe insomnia.
  Sedative drugs are prescribed to reduce excitability or anxiety.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05C
  

----------

.. _dfn-medication_psychostimulants:

Medication - Psychostimulants and nootropics (N06B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed psychostimulants and nootropics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_psychostimulants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N06B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to attention-deficit hyperactivity
  disorder (ADHD) and to improve impaired cognitive abilities.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06B
  

----------

.. _dfn-service_contact_modality:

Modality
^^^^^^^^

How the service contact was delivered, as represented by a code.

:Field name: service_contact_modality

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Face to Face
  :2: Telephone
  :3: Video
  :4: Internet-based

:Notes:
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  
  1 - Face to Face
    - If 'Face to Face' is selected, a value other than 'Not applicable' must
      be selected for Service Contact Venue
    - If 'Face to Face' is selected a valid Australian
      postcode must be entered for Service Contact Postcode. The unknown postcode is not valid.
  
  2 - Telephone
      Includes any voice based communication that does not use video,
      regardless of the technology used to provide the voice communication.
      For example, this could either be over land line telephone, mobile
      telephone, VoIP.
  
  3 - Video
      Includes any video based communication.
  
  4 - Internet-based
      Any internet based communications that do not fall into the
      2 - Telephone or 3 - Video categories. This includes email communication,
      providing the communication would normally warrant a dated entry in the
      clinical record of the client, involving a third party, such as a
      carer or family member, and/or other professional or mental health worker,
      or other service provider.
  
  Note: If Service Contact Modality is not 'Face to Face' the postcode must
  be entered as unknown 9999.
  

----------

.. _dfn-organisation_name:

Name
^^^^

The name of the provider organisation.

:Field name: organisation_name

:Data type: string (2,100)

:Required: yes

----------

.. _dfn-ndis_participant:

NDIS Participant
^^^^^^^^^^^^^^^^

Is the client a participant in the National Disability Insurance Scheme?, as represented by a code.

:Field name: ndis_participant

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described

----------

.. _dfn-service_contact_no_show:

No Show
^^^^^^^

Where an appointment was made for an intended participant(s), but the intended participant(s) failed to attend the appointment, as represented by a code.

:Field name: service_contact_no_show

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No

:Notes:
  1 - Yes
    The intended participant(s) failed to attend the appointment.
  2 - No
    The intended participant(s) attended the appointment.
  

----------

.. _dfn-organisation_end_date:

Organisation End Date
^^^^^^^^^^^^^^^^^^^^^

The date on which a provider organisation stopped delivering services.

:Field name: organisation_end_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
    - If the organisation end date is unknown, use 09099999.
  
  For validation rules please refer to :ref:`organisation-current-validations`.
  

----------

.. _dfn-organisation_key:

Organisation Key
^^^^^^^^^^^^^^^^

A sequence of characters which uniquely identifies the provider organisation to the Primary Health Network. Assigned by the Primary Health Network.

:Field name: organisation_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Organisation Keys must be generated by the PHN to be unique and must persist
  across time. See :ref:`PO_key`
  
  Organisation keys are case sensitive and must be valid unicode characters.
  

----------

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing a service to the client.

:Field name: organisation_path

:Data type: string

:Required: yes

:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-organisation_start_date:

Organisation Start Date
^^^^^^^^^^^^^^^^^^^^^^^

The date on which a provider organisation started delivering services.

:Field name: organisation_start_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  For validation rules please refer to :ref:`organisation-current-validations`.
  

----------

.. _dfn-organisation_tags:

Organisation Tags
^^^^^^^^^^^^^^^^^

List of tags for the provider organisation.

:Field name: organisation_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-organisation_type:

Organisation Type
^^^^^^^^^^^^^^^^^

The category that best describes the provider organisation.

:Field name: organisation_type

:Data type: string

:Required: yes

:Domain:
  :1: Private Allied Health Professional Practice
  :2: Private Psychiatry Practice
  :3: General Medical Practice
  :4: Private Hospital
  :5: Headspace Centre
  :6: Early Youth Psychosis Centre
  :7: Community-managed Community Support Organisation
  :8: Aboriginal Health/Medical Service
  :9: State/Territory Health Service Organisation
  :10: Drug and/or Alcohol Service
  :11: Primary Health Network
  :12: Medicare Local
  :13: Division of General Practice
  :98: Other
  :99: Missing

:Notes:
  1 - Private Allied Health Professional Practice
    The provider organisation is a group of single- or multi-discipline allied
    health practitioners operating as private service providers. This includes
    both group and solo practitioner entities.
  
  2 - Private Psychiatry practice
    The provider organisation is a Private Psychiatry practice. This includes both
    group and solo practitioner entities.
  
  3 - General Medical Practice
    The provider organisation is a General Medical Practice. This includes both
    group and solo practitioner entities.
  
  4 - Private Hospital
    The provider organisation is a private hospital.  This includes for-profit and
    not-for-profit hospitals.
  
  5 - Headspace Centre
    The provider organisation is a Headspace centre, delivering services funded by
    the PHN.
  
    Note: Headspace and Early Psychosis Youth Centres currently collect and report
    a standardised dataset to headspace National Office.  Pending the future of
    these arrangements, reporting of the PMHC minimum data set is not required by
    those organisations previously funded through headspace National Office that
    transitioned to PHNs. Where new or additional services are commissioned by
    PHNs and delivered through existing Headspace or Early Psychosis Youth Centres,
    local decisions will be required as to whether these services can be captured
    through headspace National Office sustem or are better reported through the
    PMHC MDS.
  
  6 - Early Youth Psychosis Centre
    The provider organisation is a Early Youth Psychosis Centre, delivering
    services funded by the PHN.
  
    Note: See Note above re Headspace.
  
  7 - Community-managed Community Support Organisation
    The provider organisation is a community-managed (non-government) organisation
    that primarily delivers disability-related or social support services.
  
  8 - Aboriginal Health/Medical Service
    The provider organisation is an Aboriginal or Torres Strait Islander-controlled
    health service organisation.
  
  9 - State/Territory Health Service Organisation
    The provider organisation is a health service entity principally funded by a
    state or territory government.  This includes all services delivered through
    Local Hospital Networks (variously named across jurisdictions).
  
  10 - Drug and/or Alcohol Service Organisation
    The provider organisation is an organisation that provides specialised drug
    and alcohol treatment services. The organisation may be operating in the
    government or non-government sector, and where the latter, may be for-profit
    or not-for-profit.
  
  11 - Primary Health Network
    The PHN is the provider organisation and employs the service delivery
    practitioners. This may occur during the transition period as the PHN moves to
    a full commissioning role, or in cases of market failure where there is no
    option to commission external providers.
  
  12 - Medicare Local
    The provider organisation is a former Medicare Local entity.
  
  13 - Division of General Practice
    The provider organisation is a former Division of General Practice entity.
  
  98 - Other
    The provider organisation cannot be described by any of the available options.
  

----------

.. _dfn-organisation_type_referred_to_at_episode_conclusion:

Organisation type referred to at Episode conclusion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation to which the the client was referred at the Episode conclusion.

:Field name: organisation_type_referred_to_at_episode_conclusion

:Data type: string

:Required: no

:Domain:
  :0: None/Not applicable
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :22: HeadtoHelp / HeadtoHealth Hub
  :23: Other PHN funded service
  :24: AMHC
  :99: Not stated
  
  Multiple space separated values allowed
  

:Notes:
  .. include:: shared/referrer-organisation-type.rst
  

----------

.. _dfn-organisation_type_referred_to_at_intake_conclusion:

Organisation type referred to at Intake conclusion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation to which the the client was referred at the Intake conclusion.

:Field name: organisation_type_referred_to_at_intake_conclusion

:Data type: string

:Required: no

:Domain:
  :1: GP/Medical Practitioner
  :2: Hospital
  :3: Psychiatric/mental health service or facility
  :4: Alcohol and other drug treatment service
  :5: Other community/health care service
  :6: Correctional service
  :7: Police diversion
  :8: Court diversion
  :9: Legal service
  :10: Child protection agency
  :11: Community support groups/agencies
  :12: Centrelink or employment service
  :13: Housing and homelessness service
  :14: Telephone & online services/referral agency e.g. direct line
  :15: Disability support service
  :16: Aged care facility/service
  :17: Immigration department or asylum seeker/refugee support service
  :18: School/other education or training institution
  :19: Community based Drug and Alcohol Service
  :20: Youth service (non-AOD)
  :21: Indigenous service (non-AOD)
  :22: Extended care/rehabilitation facility
  :23: Palliative care service
  :24: Police (not diversion)
  :25: Public dental provider - community dental agency
  :26: Dental Hospital
  :27: Private Dental Provider
  :28: Early childhood service
  :29: Maternal and Child Health Service
  :30: Community nursing service
  :31: Emergency relief
  :32: Family support service (excl family violence)
  :33: Family violence service
  :34: Gambling support service
  :35: Maternity services
  :36: Peer support/self-help group
  :37: Private allied health provider
  :38: Sexual Assault service
  :39: Financial counsellor
  :40: Sexual health service
  :41: Medical specialist
  :42: AMHC
  :43: Other PHN funded service
  :44: HeadtoHelp / HeadtoHealth
  :97: No Referral
  :98: Other
  :99: Not stated/Inadequately described
  
  Multiple space separated values allowed
  

:Notes:
  .. include:: shared/referrer-organisation-type.rst
  
  The intent is that each referral out only has one organisation type 
  and that multiple organisation types imples multiple referrals. 
  Where an organisation could belong to multiple types, the type that
  best suits the reason for the referral should be selected.

----------

.. _dfn-service_contact_participants:

Participants
^^^^^^^^^^^^

An indication of who participated in the Service Contact.

:Field name: service_contact_participants

:Data type: string

:Required: yes

:Domain:
  :1: Individual client
  :2: Client group
  :3: Family / Client Support Network
  :4: Other health professional or service provider
  :5: Other
  :9: Not stated

:Notes:
  1 - Individual
    Code applies for Service Contacts delivered individually to a single client
    without third party participants. Please refer to the Note below.
  
  2 - Client group
    Code applies for Service Contacts delivered on a group basis to two or more
    clients.
  
  3 - Family / Client Support Network
    Code applies to Service Contacts delivered to the family/social support
    persons of the client, with or without the participation of the client.
  
  4 - Other health professional or service provider
    Code applies for Service Contacts that involve another health professional or
    service provider (in addition to the Practitioner/s), without the
    participation of the client or family support network.
  
  5 - Other
    Code applies to Service Contacts delivered to other third parties
    (e.g., teachers, employer), with or without the participation of the client.
  
  *Note:* This item interacts with :ref:`dfn-service_contact_participation_indicator`.
  Where :ref:`dfn-service_contact_participants` has a value of
  '1: Individual', :ref:`dfn-service_contact_participation_indicator` must
  have a value of '1: Yes'. :ref:`dfn-service_contact_no_show` is used to record if the
  patient failed to attend the appointment.
  

----------

.. _dfn-service_contact_postcode:

Postcode
^^^^^^^^

The Australian postcode where the service contact took place.

:Field name: service_contact_postcode

:Data type: string

:Required: yes

:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown. The full list
  of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  - If Service Contact Modality is not 'Face to Face' enter 9999
  - If Service Contact Modality is 'Face to Face' a valid Australian postcode must be
    entered
  
  - As of 1 November 2016, PMHC MDS currently validates that postcodes are in the
    range 0200-0299 or 0800-9999.
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-practitioner_atsi_status:

Practitioner Aboriginal and Torres Strait Islander Status
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person identifies as being of Aboriginal and/or Torres Strait Islander origin, as represented by a code.

:Field name: practitioner_atsi_status

:Data type: string

:Required: yes

:Domain:
  :1: Aboriginal but not Torres Strait Islander origin
  :2: Torres Strait Islander but not Aboriginal origin
  :3: Both Aboriginal and Torres Strait Islander origin
  :4: Neither Aboriginal or Torres Strait Islander origin
  :9: Not stated/inadequately described

:Notes:
  Code 9 is not to be available as a valid answer to the questions but is
    intended for use:
  
    - Primarily when importing data from other data collections that do not
      contain mappable data.
    - Where an answer was refused.
    - Where the question was not able to be asked prior to completion of
      assistance because the client was unable to communicate or a person who
      knows the client was not available.
  

:METeOR: `291036 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291036>`__

----------

.. _dfn-practitioner_category:

Practitioner Category
^^^^^^^^^^^^^^^^^^^^^

The type or category of the practitioner, as represented by a code.

:Field name: practitioner_category

:Data type: string

:Required: yes

:Domain:
  :1: Clinical Psychologist
  :2: General Psychologist
  :3: Social Worker
  :4: Occupational Therapist
  :5: Mental Health Nurse
  :6: Aboriginal and Torres Strait Islander Health/Mental Health Worker
  :7: Low Intensity Mental Health Worker
  :8: General Practitioner
  :9: Psychiatrist
  :10: Other Medical
  :11: Other
  :12: Psychosocial Support Worker
  :13: Peer Support Worker
  :99: Not stated

:Notes:
  Practitioner category refers to the labour classification of the service
  provider delivering the Service Contact.  Practitioners should be assigned to
  the code that best describes their role for which they are engaged to deliver
  services to clients. Practitioners are registered in the PMHC MDS by Provider
  Organisations, with each practitioner assigned a code that is unique within the
  organisation.
  
  In most cases, Practitioner Category will be determined by the training
  and qualifications of the practitioner. However, in some instances, a
  practitioner may be employed in a capacity that does not necessarily reflect
  their formal qualifications. For example, a person with a social work
  qualification may be employed primarily as a peer support worker on the basis
  of their lived experience of a mental illness.  In such instances, the
  practitioner should be classified as a peer support worker.
  
  12 - Psychosocial Support Worker
    Refers to practitioners who are principally employed to provide psychosocial
    support services to clients where the practitioner has specific training in
    the area (e.g., Cert 4 qualification) and cannot be better described by
    another category.
  
  13 - Peer Support Worker
    Refers to practitioners who are principally employed to provide support to
    clients on the basis of the practitioner’s lived experience of mental illness.
  
  
  **Changes in effect from 1 January 2019**
  
  - Two new codes have been added to the existing Practitioner Category data item,
    to allow for Psychosocial Support Workers (new code 12) and Peer Support
    Workers (new code 13) who are typically employed in psychosocial support programs.
  

----------

.. _dfn-practitioner_gender:

Practitioner Gender
^^^^^^^^^^^^^^^^^^^

The term 'gender' refers to the way in which a person identifies their masculine or feminine characteristics. A persons gender relates to their deeply held internal and individual sense of gender and is not always exclusively male or female. It may or may not correspond to their sex assigned at birth.

:Field name: practitioner_gender

:Data type: string

:Required: yes

:Domain:
  :0: Not stated/Inadequately described
  :1: Male
  :2: Female
  :3: Other

:Notes:
  1 - M - Male
    Adults who identify themselves as men, and children who identify themselves
    as boys.
  
  2 - F - Female
    Adults who identify themselves as women, and children who identify themselves
    as girls.
  
  3 - X- Other
    Adults and children who identify as non-binary, gender diverse, or with
    descriptors other than man/boy or woman/girl.
  

:ABS: `http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view= <http://www.abs.gov.au/ausstats/abs@.nsf/Latestproducts/1200.0.55.012Main%20Features12016?opendocument&tabname=Summary&prodno=1200.0.55.012&issue=2016&num=&view=>`__

----------

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the responsible provider organisation. Assigned by either the PHN or Provider Organisation depending on local procedures.

:Field name: practitioner_key

:Data type: string (2,50)

:Required: yes

:Notes:
  PMHC MDS keys are case sensitive and must have between 2-50 valid unicode characters.
  Keys must start with A-Za-z0-9 (POSIX :alnum:).
  
  Where data is being exported from client systems, these keys can be auto generated,
  providing that a key does not change once it is assigned.
  
  Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of keys in
  this way allows records to be merged (where duplicate keys of the same record type have been
  identified) without having to re-allocate keys since they can
  never clash.
  
  A recommended approach for the creation of keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-practitioner_tags:

Practitioner Tags
^^^^^^^^^^^^^^^^^

List of tags for the practitioner.

:Field name: practitioner_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-primary_practitioner_indicator:

Primary Practitioner Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the practitioner was the primary practitioner responsible for the service contact.

:Field name: primary_practitioner_indicator

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No

----------

.. _dfn-principal_diagnosis:

Principal Diagnosis
^^^^^^^^^^^^^^^^^^^

The Principal Diagnosis is the diagnosis established after study to be chiefly responsible for occasioning the client's care during the current Episode of Care.

:Field name: principal_diagnosis

:Data type: string

:Required: yes

:Domain:
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing

:Notes:
  Diagnoses are grouped into 8 major categories (9 for Additional Diagnosis):
  
  - 000 - No additional diagnosis (Additional Diagnosis only)
  - 1xx - Anxiety disorders
  - 2xx - Affective (Mood) disorders
  - 3xx - Substance use disorders
  - 4xx - Psychotic disorders
  - 5xx - Disorders with onset usually occurring in childhood and adolescence not listed elsewhere
  - 6xx - Other mental disorders
  - 9xx except 999 - No formal mental disorder but subsyndromal problems
  - 999 - Missing or Unknown
  
  The Principal Diagnosis should be determined by the treating or supervising
  clinical practitioner who is responsible for providing, or overseeing, services
  delivered to the client during their current episode of care. Each episode of
  care must have a Principal Diagnosis recorded and may have an Additional
  Diagnoses. In some instances the client’s Principal Diagnosis may not be clear
  at initial contact and require a period of contact before a reliable diagnosis
  can be made. If a client has more than one diagnosis, the Principal Diagnosis
  should reflect the main presenting problem. Any secondary diagnosis should be
  recorded under the Additional Diagnosis field.
  
  The coding options developed for the PMHC MDS have been selected to balance
  comprehensiveness and brevity. They comprise a mix of the most prevalent mental
  disorders in the Australian adult, child and adolescent population,
  supplemented by less prevalent conditions that may be experienced by clients of
  PHN-commissioned mental health services. The diagnosis options are based on an
  abbreviated set of clinical terms and groupings specified in the Diagnostic and
  Statistical Manual of Mental Disorders Fourth Edition (DSM-IV-TR). These code
  list summarises the approximate 300 unique mental health disorder codes in the
  full DSM-IV to a set to 9 major categories, and 37 individual codes. Diagnoses
  are grouped under higher level categories, based on the DSM-IV. Code numbers
  have been assigned specifically for the PMHC MDS to create a logical ordering
  but are capable of being mapped to both DSM-IV and ICD-10 codes.
  
  Options for recording Principal Diagnosis include the broad category ‘No formal
  mental disorder but subsyndromal problems’ (codes commencing with 9). These
  codes should be used for clients who present with problems that do not meet
  threshold criteria for a formal diagnosis - for example, people experiencing
  subsyndromal symptoms who may be at risk of progressing to a more severe
  symptom level.
  
  Each category has a final entry for capturing other conditions that don’t meet
  the more specific entries in the category. This includes the ‘No formal mental
  disorder but subsyndromal problems’ category. Code 905 (‘Other symptoms’)
  can be used to capture situations where a formal mental disorder has not be
  diagnosed, but the symptoms do not fall under the more specific 9XX series
  entries. The 905 code should not be used where there is a formal but unlisted
  mental disorder. In such a situation code 605 (‘Other mental disorder’)
  should be used.
  
  Reference: Diagnostic and Statistical Manual of Mental Disorders, Fourth
  Edition, Text Revision. Copyright 2000 American Psychiatric Association.
  
  The following responses have been added to allow mapping of ATAPS data to PMHC
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated
  from ATAPS MDS sources that cannot be described by any other Diagnosis.
  It is expected that the majority of Episodes delivered to clients
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  

----------

.. _dfn-principal_focus:

Principal Focus of Treatment Plan
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The range of activities that best describes the overall services intended to be delivered to the client throughout the course of the episode. For most clients, this will equate to the activities that account for most time spent by the service provider.

:Field name: principal_focus

:Data type: string

:Required: yes

:Domain:
  :1: Psychological therapy
  :2: Low intensity psychological intervention
  :3: Clinical care coordination
  :4: Complex care package
  :5: Child and youth-specific mental health services
  :6: Indigenous-specific mental health services
  :7: Other

:Notes:
  Describes the main focus of the services to be delivered to the client for the
  current Episode of Care, selected from a defined list of categories.
  
  Service providers are required to report on the 'Principal Focus of Treatment
  Plan' for all accepted referrals. This requires a judgement to be made about
  the main focus of the services to be delivered to the client for the current
  Episode of Care, made following initial assessment and modifiable at a later
  stage. It is chosen from a defined list of categories, with the provider
  required to select the category that best fits the treatment plan designed for
  the client.
  
  Principal Focus of Treatment Plan is necessarily a judgement made by the
  provider at the outset of service delivery but consistent with good practice,
  should be made on the basis of a treatment plan developed in collaboration with
  the client. It should not be confused with Service Type which is collected at
  each Service Contact.
  
  1 - Psychological therapy
    The treatment plan for the client is primarily based around the delivery of
    psychological therapy by one or more mental health professionals. This
    category most closely matches the type of services delivered under the
    previous ATAPS program where up to 12 individual treatment sessions, and 18
    in exceptional circumstances, could be provided. These sessions could be
    supplemented by up to 10 group-based sessions.
  
    The concept of 'mental health professionals' has a specific meaning defined
    in the various guidance documentation prepared to support PHNs in
    implementation of reforms. It refers to service providers who meet the
    requirements for registration, credentialing or recognition as a qualified
    mental health professional and includes:
  
    - Psychiatrists
    - Registered Psychologists
    - Clinical Psychologists
    - Mental Health Nurses;
    - Occupational Therapists;
    - Social Workers
    - Aboriginal and Torres Strait Islander health workers.
  
  2 - Low intensity psychological intervention
    The treatment plan for the client is primarily based around delivery of
    time-limited, structured psychological interventions that are aimed at
    providing a less costly intervention alternative to 'standard' psychological
    therapy. The essence of low intensity interventions is that they utilise nil
    or relatively little qualified mental health professional time and are
    targeted at people with, or at risk of, mild mental illness. Low intensity
    episodes can be delivered through a range of mechanisms including:
  
    - use of individuals with appropriate competencies but who do not meet the
      requirements for registration, credentialing or recognition as a mental
      health professional;
    - delivery of services principally through group-based programs; and
    - delivery of brief or low cost forms of treatment by mental health
      professionals.
  
  3 - Clinical care coordination
    The treatment plan for the client is primarily based around delivery of a
    range of services where the overarching aim is to coordinate and better
    integrate care for the individual across multiple providers with the aim of
    improving clinical outcomes. Consultation and liaison may occur with primary
    health care providers, acute health, emergency services, rehabilitation and
    support services or other agencies that have some level of responsibility for
    the client’s clinical outcomes. These clinical care coordination and liaison
    activities are expected to account for a significant proportion of service
    contacts delivered throughout these episodes.
  
    Activities focused on working in partnership and liaison with other health
    care and service providers and other individuals to coordinate and integrate
    service delivery to the client with the aim of improving their clinical
    outcomes. Consultation and liaison may occur with primary health care
    providers, acute health, emergency services, rehabilitation and support
    services, family, friends, other support people and carers and other agencies
    that have some level of responsibility for the client’s treatment and/or
    well-being.
  
  4 - Complex Care Package
    The treatment plan for the client is primarily based around the delivery of an
    individually tailored ‘package’ of services for a client with severe and
    complex mental illness who is being managed principally within a primary care
    setting. The overarching requirement is that the client receives an
    individually tailored ‘package’ of services that bundles a range of services
    that extends beyond ‘standard’ service delivery and which is funded through
    innovative, non-standard funding models.
    Note: As outlined in the relevant guidance documentation, only three selected
    PHN Lead Sites with responsibilities for trialling work in this area are
    expected to deliver complex care packages. A wider roll-out may be undertaken
    in the future pending results of the trial.
  
  5 - Child and youth-specific mental health services
    The treatment plan for the client is primarily based around the delivery of a
    range of services for children (0-11 years) or youth (aged 12-24 years) who
    present with a mental illness, or are at risk of mental illness. These
    episodes are characterised by services that are designed specifically for
    children and young people, include a broader range of both clinical and
    non-clinical services and may include a significant component of clinical
    care coordination and liaison. Child and youth-specific mental health
    episodes have substantial flexibility in types of services actually delivered.
  
  6 - Indigenous-specific services
    The treatment plan for the client is primarily based around delivery of
    mental health services that are specifically designed to provide culturally
    appropriate services for Aboriginal and Torres Strait Islander peoples.
  
  7 - Other
     The treatment plan for the client is primarily based around services
     that cannot be described by other categories.
  

----------

.. _dfn-prof_english:

Proficiency in Spoken English
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The self-assessed level of ability to speak English, asked of people whose first language is a language other than English or who speak a language other than English at home.

:Field name: prof_english

:Data type: string

:Required: yes

:Domain:
  :0: Not applicable (persons under 5 years of age or who speak only English)
  :1: Very well
  :2: Well
  :3: Not well
  :4: Not at all
  :9: Not stated/inadequately described

:Notes:
  0 - Not applicable (persons under 5 years of age or who speak only English)
    Not applicable, is to be used for people under 5 years of age and people
    who speak only English.
  
  9 - Not stated/inadequately described
    Not stated/inadequately described, is not to be used on primary collection
    forms. It is primarily for use in administrative collections when
    transferring data from data sets where the item has not been collected.
  

:METeOR: `270203 <http://meteor.aihw.gov.au/content/index.phtml/itemId/270203>`__

----------

.. _dfn-program_type:

Program Type
^^^^^^^^^^^^

The overarching program area that an Intake or Episode record is associated with.

:Field name: program_type

:Data type: string

:Required: yes

:Domain:
  :1: Flexible Funding Pool
  :2: Head to Health
  :3: AMHC
  :4: Psychosocial
  :5: Bushfire Recovery 2020

:Notes:
  1 - Flexible Funding Pool
    Organisations can use this field for episodes being delivered through all
    other Programs commissioned through Primary Mental Health Care Schedule
    that are not otherwise described by another category. This may include but
    is not limited to general Stepped Care, Mental Health in Residential Aged
    Care Facilities, and Indigenous Mental Health.
  
  2 - Head to Health
    Organisations can use this field for episodes delivered through the Head to
    Health Program. This includes Head to Health Adult Centres and Satellites
    and pop-up clinics.
  
    NSW and Victorian pop-up clinics data have been identified using the Head
    to Help Version 3 extension and !covid19 tag. Any historical or new records
    that are identified this way will be mapped to this Program Type field
    under the Version 4 specification. The !covid19 tag will remain as a
    reserved tag for the original purpose of indicating that an episode has
    occurred as result of the COVID-19 pandemic once Head to Help Version 3
    extension reaches it’s end of life date.
  
  3 - AMHC
    Organisations can use this field for episodes delivered through the Head to
    Health Program by organisations that were already delivering the Adult
    Mental Health Centre (AMHC) trial sites.
  
    This change only applies to the following PHNs implementing AMHCs from
    December 2021:
  
    * West Victoria PHN
    * Northern Territory PHN
    * ACT PHN
    * North Perth PHN
    * Nepean Blue Mountains PHN
    * North Queensland PHN
    * Tasmania PHN
  
    AMHC data has been identified using the !amhc tag. Any historical records
    created on or before 30 June 2022 that use this tag will be mapped to this
    Program Type under the Version 4 specification. The !amhc tag will be
    removed from future use once PMHC MDS Version 2 specification reaches
    it’s end of life date.
  
    From July 1 2022 the AMHC trial sites were consolidated under the Head to
    Health program. For data collection purposes, organisations delivering
    Head to Health services that were already delivering AMHC trial sites can
    use either the AMHC or Head to Health program type for records created
    on or after 1 July 2022.
  
  4 - Psychosocial
    Organisations can use this field for episodes delivered through the National
    Psychosocial Support Services Program.
  
    Psychosocial data has been identified using the Principal Focus of Treatment
    Plan (PFOT) “Psychosocial” category. Any historical or new records that
    utilise the Psychosocial PFOT will be mapped to this Program Type field
    under the Version 4 specification.  The Psychosocial PFOT category will
    no longer be available under the Version 4 specification and further
    guidance will be provided by the Department to support the management
    of this change in data collection requirements.
  
    Any records that have the Psychosocial PFOT but also have a !covid19,
    !amhc, or !br20 tag will be mapped to the respective Program Type associated
    with those tags rather than the Psychosocial Program Type.
  
  5 - Bushfire Recovery 2020
    Organisations in fire affected communities can use this field for episodes
    delivered through the Australian Government Mental Health Response to
    Bushfire Trauma.
  
    This data has been identified using the !br20 tag. Any historical or new
    records using this tag will be mapped to this Program Type field under
    the Version 4 specification. The !br20 tag will be removed from future
    use once the Bushfire Program is concluded.
  

----------

.. _dfn-referral_date:

Referral Date
^^^^^^^^^^^^^

The date the referrer made the referral.

:Field name: referral_date

:Data type: date

:Required: yes

:Notes:
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
  

----------

.. _dfn-referred_to_organisation_path:

Referred to Organisation Path
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation to which the intake referred the client.

:Field name: referred_to_organisation_path

:Data type: string

:Required: no

:Notes:
  A combination of the referred to Primary Health Network's (PHN's) Organisation Key and the
  referred to Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-referrer_organisation_type:

Referrer Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation in which the referring professional is based.

:Field name: referrer_organisation_type

:Data type: string

:Required: yes

:Domain:
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :98: N/A - Self referral
  :99: Not stated

:Notes:
  .. include:: shared/referrer-organisation-type.rst
  
  Not applicable should only be selected in instances of Self referral.
  
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same referrer organisation type - ie the intake service is NOT the referrer.
  

----------

.. _dfn-referrer_profession:

Referrer Profession
^^^^^^^^^^^^^^^^^^^

Profession of the provider who referred the client.

:Field name: referrer_profession

:Data type: string

:Required: yes

:Domain:
  :1: General Practitioner
  :2: Psychiatrist
  :3: Obstetrician
  :4: Paediatrician
  :5: Other Medical Specialist
  :6: Midwife
  :7: Maternal Health Nurse
  :8: Psychologist
  :9: Mental Health Nurse
  :10: Social Worker
  :11: Occupational therapist
  :12: Aboriginal Health Worker
  :13: Educational professional
  :14: Early childhood service worker
  :15: Other
  :98: N/A - Self referral
  :99: Not stated

:Notes:
  New arrangements for some services delivered in primary mental health care
  allows clients to refer themselves for treatment. Therefore, 'Self'
  is a response option included within 'Referrer profession'.
  
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same referrer profession - ie the intake service is not the referrer.

----------

.. _dfn-sdq_version:

SDQ Collection Occasion - Version
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The version of the SDQ collected.

:Field name: sdq_version

:Data type: string

:Required: yes

:Domain:
  :PC101: Parent Report Measure 4-10 yrs, Baseline version, Australian Version 1
  :PC201: Parent Report Measure 4-10 yrs, Follow Up version, Australian Version 1
  :PY101: Parent Report Measure 11-17 yrs, Baseline version, Australian Version 1
  :PY201: Parent Report Measure 11-17 yrs, Follow Up version, Australian Version 1
  :YR101: Self report Version, 11-17 years, Baseline version, Australian Version 1
  :YR201: Self report Version, 11-17 years, Follow Up version, Australian Version 1

:Notes:
  Domain values align with those collected in the NOCC dataset as defined at
  https://webval.validator.com.au/spec/NOCC/current/SDQ/SDQVer
  

----------

.. _dfn-sdq_conduct_problem:

SDQ - Conduct Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_conduct_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Conduct Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_emotional_symptoms:

SDQ - Emotional Symptoms Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_emotional_symptoms

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Emotional Symptoms Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_hyperactivity:

SDQ - Hyperactivity Scale
^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_hyperactivity

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Hyperactivity Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_impact:

SDQ - Impact Score
^^^^^^^^^^^^^^^^^^


:Field name: sdq_impact

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Impact Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_peer_problem:

SDQ - Peer Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_peer_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Peer Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_prosocial:

SDQ - Prosocial Scale
^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_prosocial

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Prosocial Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item1:

SDQ - Question 1
^^^^^^^^^^^^^^^^

Parent Report: Considerate of other people's feelings.

Youth Self Report: I try to be nice to other people. I care about their feelings.

:Field name: sdq_item1

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item2:

SDQ - Question 2
^^^^^^^^^^^^^^^^

Parent Report: Restless, overactive, cannot stay still for long.

Youth Self Report: I am restless, I cannot stay still for long.

:Field name: sdq_item2

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item3:

SDQ - Question 3
^^^^^^^^^^^^^^^^

Parent Report: Often complains of headaches, stomach-aches or sickness.

Youth Self Report: I get a lot of headaches, stomach-aches or sickness.

:Field name: sdq_item3

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item4:

SDQ - Question 4
^^^^^^^^^^^^^^^^

Parent Report: Shares readily with other children {for example toys, treats, pencils} / young people {for example CDs, games, food}.

Youth Self Report: I usually share with others, for examples CDs, games, food.

:Field name: sdq_item4

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item5:

SDQ - Question 5
^^^^^^^^^^^^^^^^

Parent Report: Often loses temper.

Youth Self Report: I get very angry and often lose my temper.

:Field name: sdq_item5

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item6:

SDQ - Question 6
^^^^^^^^^^^^^^^^

Parent Report: {Rather solitary, prefers to play alone} / {would rather be alone than with other young people}.

Youth Self Report: I would rather be alone than with people of my age.

:Field name: sdq_item6

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item7:

SDQ - Question 7
^^^^^^^^^^^^^^^^

Parent Report: {Generally well behaved} / {Usually does what adults requests}.

Youth Self Report: I usually do as I am told.

:Field name: sdq_item7

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item8:

SDQ - Question 8
^^^^^^^^^^^^^^^^

Parent Report: Many worries or often seems worried.

Youth Self Report: I worry a lot.

:Field name: sdq_item8

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item9:

SDQ - Question 9
^^^^^^^^^^^^^^^^

Parent Report: Helpful if someone is hurt, upset or feeling ill.

Youth Self Report: I am helpful if someone is hurt, upset or feeling ill.

:Field name: sdq_item9

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item10:

SDQ - Question 10
^^^^^^^^^^^^^^^^^

Parent Report: Constantly fidgeting or squirming.

Youth Self Report: I am constantly fidgeting or squirming.

:Field name: sdq_item10

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item11:

SDQ - Question 11
^^^^^^^^^^^^^^^^^

Parent Report: Has at least one good friend.

Youth Self Report: I have one good friend or more.

:Field name: sdq_item11

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item12:

SDQ - Question 12
^^^^^^^^^^^^^^^^^

Parent Report: Often fights with other {children} or bullies them / {young people}.

Youth Self Report: I fight a lot. I can make other people do what I want.

:Field name: sdq_item12

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item13:

SDQ - Question 13
^^^^^^^^^^^^^^^^^

Parent Report: Often unhappy, depressed or tearful.

Youth Self Report: I am often unhappy, depressed or tearful.

:Field name: sdq_item13

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item14:

SDQ - Question 14
^^^^^^^^^^^^^^^^^

Parent Report: Generally liked by other {children} / {young people}

Youth Self Report: Other people my age generally like me.

:Field name: sdq_item14

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item15:

SDQ - Question 15
^^^^^^^^^^^^^^^^^

Parent Report: Easily distracted, concentration wanders.

Youth Self Report: I am easily distracted, I find it difficult to concentrate.

:Field name: sdq_item15

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item16:

SDQ - Question 16
^^^^^^^^^^^^^^^^^

Parent Report: Nervous or {clingy} in new situations, easily loses confidence {omit clingy in PY}.

Youth Self Report: I am nervous in new situations. I easily lose confidence.

:Field name: sdq_item16

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item17:

SDQ - Question 17
^^^^^^^^^^^^^^^^^

Parent Report: Kind to younger children.

Youth Self Report: I am kind to younger people.

:Field name: sdq_item17

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item18:

SDQ - Question 18
^^^^^^^^^^^^^^^^^

Parent Report: Often lies or cheats.

Youth Self Report: I am often accused of lying or cheating.

:Field name: sdq_item18

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item19:

SDQ - Question 19
^^^^^^^^^^^^^^^^^

Parent Report: Picked on or bullied by {children} / {youth}.

Youth Self Report: Other children or young people pick on me or bully me.

:Field name: sdq_item19

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item20:

SDQ - Question 20
^^^^^^^^^^^^^^^^^

Parent Report: Often volunteers to help others (parents, teachers, {other} children) / Omit 'other' in PY.

Youth Self Report: I often volunteer to help others (parents, teachers, children).

:Field name: sdq_item20

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item21:

SDQ - Question 21
^^^^^^^^^^^^^^^^^

Parent Report: Thinks things out before acting.

Youth Self Report: I think before I do things.

:Field name: sdq_item21

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item22:

SDQ - Question 22
^^^^^^^^^^^^^^^^^

Parent Report: Steals from home, school or elsewhere.

Youth Self Report: I take things that are not mine from home, school or elsewhere.

:Field name: sdq_item22

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item23:

SDQ - Question 23
^^^^^^^^^^^^^^^^^

Parent Report: Gets along better with adults than with other {children} / {youth}.

Youth Self Report: I get along better with adults than with people my own age.

:Field name: sdq_item23

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item24:

SDQ - Question 24
^^^^^^^^^^^^^^^^^

Parent Report: Many fears, easily scared.

Youth Self Report: I have many fears, I am easily scared.

:Field name: sdq_item24

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item25:

SDQ - Question 25
^^^^^^^^^^^^^^^^^

Parent Report: Good attention span sees chores or homework through to the end.

Youth Self Report: I finish the work I'm doing. My attention is good.

:Field name: sdq_item25

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item26:

SDQ - Question 26
^^^^^^^^^^^^^^^^^

Parent Report: Overall, do you think that your child has difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

Youth Self Report: Overall, do you think that you have difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

:Field name: sdq_item26

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: Yes - minor difficulties
  :2: Yes - definite difficulties
  :3: Yes - severe difficulties
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item27:

SDQ - Question 27
^^^^^^^^^^^^^^^^^

Parent Report: How long have these difficulties been present?

Youth Self Report: How long have these difficulties been present?

:Field name: sdq_item27

:Data type: string

:Required: yes

:Domain:
  :0: Less than a month
  :1: 1-5 months
  :2: 6-12 months
  :3: Over a year
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  - PC101
  - PY101
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item28:

SDQ - Question 28
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties upset or distress your child?

Youth Self Report: Do the difficulties upset or distress you?

:Field name: sdq_item28

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item29:

SDQ - Question 29
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? HOME LIFE.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? HOME LIFE.

:Field name: sdq_item29

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item30:

SDQ - Question 30
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? FRIENDSHIPS.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? FRIENDSHIPS.

:Field name: sdq_item30

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item31:

SDQ - Question 31
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? CLASSROOM LEARNING.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? CLASSROOM LEARNING

:Field name: sdq_item31

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item32:

SDQ - Question 32
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? LEISURE ACTIVITIES.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? LEISURE ACTIVITIES.

:Field name: sdq_item32

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item33:

SDQ - Question 33
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties put a burden on you or the family as a whole?

Youth Self Report: Do the difficulties make it harder for those around you (family, friends, teachers, etc)?

:Field name: sdq_item33

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item34:

SDQ - Question 34
^^^^^^^^^^^^^^^^^

Parent Report: Since coming to the services, are your child's problems:

Youth Self Report: 'Since coming to the service, are your problems:

:Field name: sdq_item34

:Data type: string

:Required: yes

:Domain:
  :0: Much worse
  :1: A bit worse
  :2: About the same
  :3: A bit better
  :4: Much better
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item35:

SDQ - Question 35
^^^^^^^^^^^^^^^^^

Has coming to the service been helpful in other ways eg. providing information or making the problems bearable?

:Field name: sdq_item35

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item36:

SDQ - Question 36
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of fidgetiness, restlessness or overactivity?

:Field name: sdq_item36

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item37:

SDQ - Question 37
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of poor concentration or being easily distracted?

:Field name: sdq_item37

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item38:

SDQ - Question 38
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of acting without thinking, frequently butting in, or not waiting for his or her turn?

:Field name: sdq_item38

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item39:

SDQ - Question 39
^^^^^^^^^^^^^^^^^

Does your family complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item39

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item40:

SDQ - Question 40
^^^^^^^^^^^^^^^^^

Do your teachers complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item40

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item41:

SDQ - Question 41
^^^^^^^^^^^^^^^^^

Does your family complain about you being awkward or troublesome?

:Field name: sdq_item41

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item42:

SDQ - Question 42
^^^^^^^^^^^^^^^^^

Do your teachers complain about you being awkward or troublesome?

:Field name: sdq_item42

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_tags:

SDQ - Tags
^^^^^^^^^^

List of tags for the measure.

:Field name: sdq_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-sdq_total:

SDQ - Total Difficulties Score
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_total

:Data type: integer

:Required: yes

:Domain:
  0 - 40, 99 = Not stated / Missing

:Notes:
  See `SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#scoring-the-sdq>`_ for instructions on scoring the Total Difficulties Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-service_contact_date:

Service Contact Date
^^^^^^^^^^^^^^^^^^^^

The date of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The service contact date must not be before 1st January 2014.
  
  - The service contact date must not be in the future.
  

:METeOR: `494356 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494356>`__

----------

.. _dfn-service_contact_key:

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the Provider Organisation.

:Field name: service_contact_key

:Data type: string (2,50)

:Required: yes

:Notes:
  PMHC MDS keys are case sensitive and must have between 2-50 valid unicode characters.
  Keys must start with A-Za-z0-9 (POSIX :alnum:).
  
  Where data is being exported from client systems, these keys can be auto generated,
  providing that a key does not change once it is assigned.
  
  Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of keys in
  this way allows records to be merged (where duplicate keys of the same record type have been
  identified) without having to re-allocate keys since they can
  never clash.
  
  A recommended approach for the creation of keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-service_contact_practitioner_key:

Service Contact Practitioner Key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact practitioner. The Service Contact Practitioner Key is unique and stable for each service contact practitioner at the level of the Provider Organisation.

:Field name: service_contact_practitioner_key

:Data type: string (2,50)

:Required: yes

:Notes:
  PMHC MDS keys are case sensitive and must have between 2-50 valid unicode characters.
  Keys must start with A-Za-z0-9 (POSIX :alnum:).
  
  Where data is being exported from client systems, these keys can be auto generated,
  providing that a key does not change once it is assigned.
  
  Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of keys in
  this way allows records to be merged (where duplicate keys of the same record type have been
  identified) without having to re-allocate keys since they can
  never clash.
  
  A recommended approach for the creation of keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-service_contact_tags:

Service Contact Tags
^^^^^^^^^^^^^^^^^^^^

List of tags for the service contact.

:Field name: service_contact_tags

:Data type: string

:Required: no

:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_type:

Service Contact Type
^^^^^^^^^^^^^^^^^^^^

The main type of service provided in the service contact, as represented by the service type that accounted for most provider time.

:Field name: service_contact_type

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Assessment
  :2: Structured psychological intervention
  :3: Other psychological intervention
  :4: Clinical care coordination/liaison
  :5: Clinical nursing services
  :6: Child or youth specific assistance NEC
  :7: Suicide prevention specific assistance NEC
  :8: Cultural specific assistance NEC
  :9: Psychosocial support
  :98: ATAPS

:Notes:
  
  
  Describes the main type of service delivered in the contact, selected from a
  defined list of categories.  Where more than service type was provided select
  that which accounted for most provider time. Service providers are required
  to report on Service Type for all Service Contacts.
  
  *Note: NEC is used for 'Not Elsewhere Classified'. For these records, only use these service types if they cannot be classified by any of the other service options.*
  
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  
  1 - Assessment
    Determination of a person's mental health status and need for mental
    health services, made by a suitably trained mental health professional,
    based on the collection and evaluation of data obtained through interview
    and observation, of a person's history and presenting problem(s).
    Assessment may include consultation with the person's family and concludes
    with formation of problems/issues, documentation of a preliminary
    diagnosis, and a treatment plan.
  
  2 - Structured psychological intervention
    Those interventions which include a structured interaction between a
    client and a service provider using a recognised, psychological method,
    for example, cognitive behavioural techniques, family therapy or psycho
    education counselling. These are recognised, structured or published
    techniques for the treatment of mental ill-health. Structured psychological
    interventions are designed to alleviate psychological distress or
    emotional disturbance, change maladaptive behaviour and foster mental
    health. Structured psychological therapies can be delivered on either an
    individual or group basis, typically in an office or community setting.
    They may be delivered by trained mental health professionals or other
    individuals with appropriate competencies but who do not meet the
    requirements for registration, credentialing or recognition as a mental
    health professional. Structured Psychological Therapies include but are
    not limited to:
  
    - Psycho-education (including motivational interviewing)
    - Cognitive-behavioural therapies
    - Relaxation strategies
    - Skills training
    - Interpersonal therapy
  
  3 - Other psychological intervention
     Psychological interventions that do not meet criteria for structured
     psychological intervention.
  
  4 - Clinical care coordination/liaison
     Activities focused on working in partnership and liaison with other
     health care and service providers and other individuals to coordinate
     and integrate service delivery to the client with the aim of improving
     their clinical outcomes. Consultation and liaison may occur with primary
     health care providers, acute health, emergency services, rehabilitation
     and support services, family, friends, other support people and carers
     and other agencies that have some level of responsibility for the
     client's treatment and/or well being.
  
  5 - Clinical nursing services
    Services delivered by mental health nurses that cannot be described
    elsewhere.  Typically, these aim to provide clinical support to clients
    to effectively manage their symptoms and avoid unnecessary hospitalisation.
    Clinical nursing services include:
  
    - monitoring a client's mental state;
    - liaising closely with family and carers as appropriate;
    - administering and monitoring compliance with medication;
    - providing information on physical health care, as required and,
      where appropriate, assist in addressing the physical health inequities
      of people with mental illness; and
    - improving links to other health professionals/clinical service providers.
  
  6 - Child or youth-specific assistance NEC
    Services delivered to, or on behalf, of a child or young person that cannot
    be described elsewhere. These can include, for example, working with a
    child’s teacher to provide advice on assisting the child in their educational
    environment; working with a young person's employer to assist the young
    person to their work environment.
  
    *Note: This code should only be used for
    Service Contacts that cannot be described by any other Service Type. It is
    expected that the majority of Service Contacts delivered to children and
    young people can be assigned to other categories.*
  
  7 - Suicide prevention specific assistance NEC
    Services delivered to, or on behalf, of a client who presents with risk of
    suicide that cannot be described elsewhere. These can include, for example,
    working with the person's employers to advise on changes in the workplace;
    working with a young person's teacher to assist the child in their school
    environment; or working with relevant community-based groups to assist the
    client to participate in their activities.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts delivered to client’s who have a risk of suicide can be
    assigned to other categories.*
  
  8 - Cultural specific assistance NEC
    Culturally appropriate services delivered to, or on behalf, of an Aboriginal
    or Torres Strait Islander client that cannot be described elsewhere.  These
    can include, for example, working with the client’s community support network
    including family and carers, men’s and women’s groups, traditional healers,
    interpreters and social and emotional wellbeing counsellors.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts (see domains below) delivered to Aboriginal or Torres Strait
    Islander clients can be assigned to other categories.*
  
  9 - Psychosocial support
    Service providers are required to report on Service Contact Type for every
    contact with a client. This requires a judgement about the main service
    delivered at each contact, selected from a small list of options, and based
    on the activity that accounted for most provider time. Service Contact Type
    complements Principal Focus of Treatment Plan by capturing information to
    understand the mix of services provided within an individual episode of care.
  
    Service Contact Type should be coded as Psychosocial Support (code 9) where
    the main services delivered during the contact involved the delivery of
    psychosocial support services. Psychosocial support services are defined for
    PMHC MDS purposes as services that focus on building capacity and stability
    in one or more of the following areas:
  
    * social skills and friendships, family connections;
    * managing daily living needs;
    * financial management and budgeting;
    * finding and maintaining a home;
    * vocational skills and goals, including volunteering;
    * educational and training goals;
    * maintaining physical wellbeing, including exercise;
    * building broader life skills including confidence and resilience.
  
    These services are usually delivered by a range of non-clinical providers
    including peer support workers with lived experience of mental illness.
  
    Service Contacts recorded as psychosocial support may be delivered in all
    episodes of care, regardless of episode type.  However, it is expected that
    they will be mainly associated with episodes where the Principal Focus of
    Treatment Plan is classified as Psychosocial Support.
  
  98 - ATAPS
    Services delivered as part of ATAPS funded referrals that are recorded and/or
    migrated into the PMHC MDS.
  
    *Note: This code should only be used for Service Contacts that are migrated
    from ATAPS MDS sources that cannot be described by any other Service Type.
    It is expected that the majority of Service Contacts delivered to clients
    from 1st July, 2017 can be assigned to other categories.*
  
    This response will not be allowed on service contacts delivered after
    30 June 2018. (All ATAPS referrals should have concluded by that date).
  
    This response will only be allowed on service contacts with the !ATAPS flag.
  

----------

.. _dfn-income_source:

Source of Cash Income
^^^^^^^^^^^^^^^^^^^^^

The source from which a person derives the greatest proportion of his/her income, as represented by a code.

:Field name: income_source

:Data type: string

:Required: yes

:Domain:
  :0: N/A - Client aged less than 16 years
  :1: Disability Support Pension
  :2: Other pension or benefit (not superannuation)
  :3: Paid employment
  :4: Compensation payments
  :5: Other (e.g. superannuation, investments etc.)
  :6: Nil income
  :7: Not known
  :9: Not stated/inadequately described

:Notes:
  This data standard is not applicable to person's aged less than 16 years.
  
  This item refers to the source by which a person derives most (equal to or
  greater than 50%) of his/her income. If the person has multiple sources of
  income and none are equal to or greater than 50%, the one which contributes
  the largest percentage should be counted.
  
  This item refers to a person's own main source of income, not that of a
  partner or of other household members. If it is difficult to determine a
  'main source of income' over the reporting period (i.e. it may vary over
  time) please report the main source of income during the reference week.
  
  Code 7 'Not known' should only be recorded when it has not been possible for
  the service user or their carer/family/advocate to provide the information
  (i.e. they have been asked but do not know).
  

:METeOR: `386449 <http://meteor.aihw.gov.au/content/index.phtml/itemId/386449>`__

----------

.. _dfn-service_contact_start_time:

Start Time
^^^^^^^^^^

The start time of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_start_time

:Data type: time

:Required: yes

:Notes:
  Notes: Indicates the time at which the Service Contact began. Time should be
  recorded in 24-hour time in the format HH:MM. Leading zeroes are accepted but
  not required. For example, 8:30 in the morning could be 8:30 or 08:30 and 3:45
  in the afternoon would be 15:45.
  
  The end-of-day flag "24:00" may be used as a missing time value for any
  existing Service Contacts that have previously been added to the MDS without
  a start time. See :ref:`service-contact-current-validations` for rules on
  how the end-of-day value may be used.
  

----------

.. _dfn-organisation_state:

State
^^^^^

The state that the provider organisation operates in.

:Field name: organisation_state

:Data type: string

:Required: yes

:Domain:
  :1: New South Wales
  :2: Victoria
  :3: Queensland
  :4: South Australia
  :5: Western Australia
  :6: Tasmania
  :7: Northern Territory
  :8: Australian Capital Territory
  :9: Other Territories

:Notes:
  - Name is taken from Australian `Statistical Geography Standard (ASGS) July
    2011
    <http://www.abs.gov.au/ausstats/abs@.nsf/0/871A7FF33DF471FBCA257801000DCD5
    F?Opendocument>`_.
  - Code is from Meteor with the addition of code for Other Territories.
  

:METeOR: `613718 <http://meteor.aihw.gov.au/content/index.phtml/itemId/613718>`__

----------

.. _dfn-slk:

Statistical Linkage Key
^^^^^^^^^^^^^^^^^^^^^^^

A key that enables two or more records belonging to the same individual to be brought together.

:Field name: slk

:Data type: string (14,40)

:Required: yes

:Notes:
  System generated non-identifiable alphanumeric code derived from information
  held by the PMHC organisation.
  
  Supported formats:
    - 14 character `SLK
      <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`_
    - a `Crockford encoded <http://www.crockford.com/wrmg/base32.html>`_ sha1
      hash of a 14 character SLK. This must be 32 characters in length.
    - a hex encoded sha1 hash of a 14 character SLK. This must be 40 characters
      in length.
  
  SLK values are stored in sha1_hex format.
  

:METeOR: `349510 <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`__

----------

.. _dfn-suicide_referral_flag:

Suicide Referral Flag
^^^^^^^^^^^^^^^^^^^^^

Identifies those individuals where a recent history of suicide attempt, or suicide risk, was a factor noted in the referral that underpinned the person's needs for assistance at intake or entry to the episode, as represented by a code.

:Field name: suicide_referral_flag

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same suicide referral flag.
  

----------

.. _dfn-value:

Value
^^^^^

The metadata value.

:Field name: value

:Data type: string

:Required: yes

:Notes:
  Please refer to :ref:`metadata-format` for an example of the metadata file/worksheet that
  must be used with this specification.
  

----------

.. _dfn-service_contact_venue:

Venue
^^^^^

Where the service contact was delivered, as represented by a code.

:Field name: service_contact_venue

:Data type: string

:Required: yes

:Domain:
  :1: Client's Home
  :2: Service provider's office
  :3: GP Practice
  :4: Other medical practice
  :5: Headspace Centre
  :6: Other primary care setting
  :7: Public or private hospital
  :8: Residential aged care facility
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :12: Aged care centre - non-residential
  :98: Not applicable (Service Contact Modality is not face to face)
  :99: Not stated

:Notes:
  Note that this data item concerns only where the service contact took place.
  It is not about where the client lives. Thus, if a resident of an aged care
  residential facility is seen at another venue (e.g., at a GP Clinic), then
  the Service Contact Venue should be recorded as ‘GP Practice’ (code 3) to
  accurately reflect where the contact took place.
  
  Values other than ‘98 - Not applicable’ only to be specified when Service Contact
  Modality is ‘Face to Face’.
  
  6 - Other primary care setting
    This code is suitable for primary care settings such as community health centres.
  
  8 - Residential aged care facility
    Use this code when the client is seen at an aged care residential facility.
  
  12 - Aged care centre - non-residential
    Use this code when the client is seen at a non-residential aged care centre
    (e.g., community day program centre for older people).
  
  98 - Not applicable (Service Contact Modality is not face to face)
    This code must only to be used where the Service Contact Modality is not
    face to face
  
  All other data items would be recorded as per the guidelines that apply to
  those items – there are no special requirements specific to delivery of
  services to residents of aged care facilities.  For example, any of the
  episode of care types recorded under the Principal Focus of Treatment Plan
  may apply; similarly, service contacts delivered to aged care residents may
  be any of the options available in Service Contact Type field.
  

----------

.. _dfn-practitioner_year_of_birth:

Year of Birth
^^^^^^^^^^^^^

The year the practitioner was born.

:Field name: practitioner_year_of_birth

:Data type: gYear

:Required: yes

:Domain:
  gYear

:Notes:
  - The year of birth must not be in the future.
  - The year of birth must be after 1900.
  - If the year of birth is unknown, the following approaches should be used:
  
    - If the age of the practitioner is known, the age should be used to derive the
      year of birth
    - If the age of the practitioner is unknown, an estimated age of the practitioner should
      be used to estimate a year of birth
    - If the date of birth is totally unknown, use 9999.
  

----------

