-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/grants/authenticated/insert/grant


REVOKE INSERT (cc, number, owner_id, is_primary) ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers FROM authenticated;


