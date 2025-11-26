System generated non-identifiable alphanumeric code derived from information
held by the PMHC organisation.

Supported formats:

  - 14 character `SLK
    <http://meteor.aihw.gov.au/content/index.phtml/itemId/349510>`_
  - a base 32 `Crockford encoded <http://www.crockford.com/wrmg/base32.html>`_ sha1
    hash of a 14 character SLK. This must be 32 characters in length.
  - a base 16 hex encoded sha1 hash of a 14 character SLK. This must be 40 characters
    in length.

SLK values are stored in the base 32 Crockford encoded format.

Where a 14 character SLK is provided, the SLK will be hashed before being stored.

Where a base 16 hex encoded sha1 hash of a 14 character SLK is provided, no 
further hashing will be done, however its representation is converted 
to base 32 Crockford encoding before storing it.

Where a base 32 Crockford encoded sha1 hash of a 14 character SLK is 
provided, the hashed SLK is stored as provided.



