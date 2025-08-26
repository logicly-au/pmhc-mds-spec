In order to use code 1 (Episode closed - treatment concluded) the client must have at least one service contact. All other codes may be applicable even when the client has no service contacts.

**0 or Blank - Episode open**

  The client still requires treatment and further service contacts are
  required.

**1 - Episode closed - treatment concluded**

  No further service contacts are planned as the client no longer requires
  treatment.

**2 - Episode closed administratively - client could not be contacted**

  Further service contacts were planned but the client could no longer be
  contacted.

**3 - Episode closed administratively - client declined further contact**

  Further service contacts were planned but the client declined further treatment.

**4 - Episode closed administratively - client moved out of area**

  Further service contacts were planned but the client moved out of the area
  without a referral elsewhere. Where a client was referred somewhere else
  *Episode Completion Status* should be recorded as code 5 (Episode closed
  administratively - client referred elsewhere).

**5 - Episode closed administratively - client referred elsewhere**

  Where a client still requires treatment, but a different service has been
  deemed appropriate or a client has moved out of the area so has moved to a
  different provider.

**6 - Episode closed administratively - other reason**

  Where a client is no longer being given treatment but the reason for
  conclusion is not covered above.

.. note::
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
