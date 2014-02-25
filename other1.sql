	OPEN SYMMETRIC KEY SymCustKey
	DECRYPTION BY CERTIFICATE CustCertMK

select	*
from	vw_Cards
where	CardID = 2610011507887 

select	*
from	Customers
where	CustID = 4509800

select	*
from	CustAttribs
where	CustID = 100010001

select	*
from	vw_SessionInfo
where	ID > 1848516



			select	1 - count(*)
			from	CustAttribs
			where	CustID = 2746550
			and		AttrID = 6
			and		AttrValue = '-1'

web_GetCustomerInfoFull 'xxx', 2746550

sys_DelCustAttrib 6, 100010001

sys_SetCustAttrib 6, 2746550, -1, -1

exec sbl_MakePointsTransaction 2746550, 500, 'WebReg', 'Activation Bonus Points'