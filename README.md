# Register smart-contract

Smart-contract to register referral for the Swisstronik early bird program

## Contract interface

### Public storage

- github : string of repository url
- owner  : Address of the contract owner
- referrals: Array of Referral (struct of name and address)

### entry-point

- addReferral (address, name) return void : add a new referral

### views

- totalReferrals () return uint : returns the total number of referrals
