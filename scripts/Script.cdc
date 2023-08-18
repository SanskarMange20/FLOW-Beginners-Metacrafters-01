import Owner from 0x01

pub fun main(account: Address): Owner.Features {
    return Owner.owners[account]!
}