pub contract Owner {

    pub var owners: {Address: Features}
    
    pub struct Features {
        pub let laptopname: String
        pub let brandname: String
        pub let modelno: String
        pub let manufacturingyear: Int
        pub let account: Address

        init(_laptopname: String, _brandname: String, _modelno: String, _manufacturingyear:Int, _account: Address) {
            self.laptopname = _laptopname
            self.brandname = _brandname
            self.modelno = _modelno
            self.manufacturingyear = _manufacturingyear 
            self.account = _account
        }
    }

    pub fun addowner(laptopname: String, brandname: String, modelno: String, manufacturingyear: Int , account: Address) {
        let newone = Features(_laptopname: laptopname, _brandname: brandname, _modelno: modelno, _manufacturingyear: manufacturingyear, _account: account)
        self.owners[account] = newone
    }

    init() {
        self.owners = {}
    }

}