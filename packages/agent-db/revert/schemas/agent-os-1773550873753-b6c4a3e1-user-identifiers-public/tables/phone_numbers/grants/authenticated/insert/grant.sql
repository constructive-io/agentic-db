-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/grants/authenticated/insert/grant


REVOKE INSERT (cc, number, owner_id, is_primary) ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers FROM authenticated;


