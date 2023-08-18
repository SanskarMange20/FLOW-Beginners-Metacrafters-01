import Owner from 0x01

transaction(laptopname: String, brandname: String, modelno: String, manufacturingyear: Int, account: Address)
{
    prepare(signer:AuthAccount)
    {

    }
    execute 
    {
        Owner.addowner(laptopname: laptopname, brandname: brandname, modelno: modelno, manufacturingyear: manufacturingyear, account: account)
        log("Features Stored")
    }
}