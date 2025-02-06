// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Transactions {
    enum EntityType {
        SkillValidator,
        Company,
        Candidate,
        Recruiter,
        Agency,
        SmartContract,
        Null
    }

    struct Transaction {
        string subject_entity_id;
        EntityType subject_entity_type;
        string action;
        string context_entity_id;
        EntityType context_entity_type;
        string tokens_involved;
        string token_price_in_inr;
        string created_at;
    }

    Transaction[] public transactions;

    constructor() {
        transactions.push(Transaction({
            subject_entity_id: "nik",
            subject_entity_type: EntityType.SmartContract,
            action: "Init",
            context_entity_id: "",
            context_entity_type: EntityType.Null,
            tokens_involved: "0",
            token_price_in_inr: "token_price_in_inr",
            created_at: "2025-02-06"

        }));
    }

    function getAllTransactions() public view returns (Transaction[] memory) {
        return transactions;
    }

    function addNewTransaction(Transaction memory newTransaction) public {
        transactions.push(newTransaction);
    }
}