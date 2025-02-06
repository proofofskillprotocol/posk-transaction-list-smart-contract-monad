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
        transactions.push(
            Transaction({
                subject_entity_id: "nik",
                subject_entity_type: EntityType.SmartContract,
                action: "Init",
                context_entity_id: "",
                context_entity_type: EntityType.Null,
                tokens_involved: "0",
                token_price_in_inr: "0",
                created_at: "2025-02-06"
            })
        );
    }

    function getAllTransactions() public view returns (Transaction[] memory) {
        return transactions;
    }

    function addNewTransaction(
        string memory _subject_entity_id,
        EntityType _subject_entity_type,
        string memory _action,
        string memory _context_entity_id,
        EntityType _context_entity_type,
        string memory _tokens_involved,
        string memory _token_price_in_inr,
        string memory _created_at
    ) public {
        // Construct the Transaction struct from the input parameters
        Transaction memory newTransaction = Transaction({
            subject_entity_id: _subject_entity_id,
            subject_entity_type: _subject_entity_type,
            action: _action,
            context_entity_id: _context_entity_id,
            context_entity_type: _context_entity_type,
            tokens_involved: _tokens_involved,
            token_price_in_inr: _token_price_in_inr,
            created_at: _created_at
        });

        // Store the new transaction in the transactions array
        transactions.push(newTransaction);
    }
}
