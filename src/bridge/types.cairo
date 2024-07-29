pub type MessageHash = felt252;
pub type Nonce = felt252;

#[derive(Serde, Drop, starknet::Store, PartialEq)]
pub enum TokenStatus {
    #[default]
    Unknown,
    Pending,
    Active,
    Blocked,
    Deactivated
}

#[derive(Serde, Drop, starknet::Store)]
pub struct TokenSettings {
    pub token_status: TokenStatus,
    pub deployment_message_hash: MessageHash,
    pub pending_deployment_expiration: u64,
    pub max_total_balance: u256,
    pub withdrawal_limit_applied: bool
}
