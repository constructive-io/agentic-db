-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/grants/authenticated/insert/grant


REVOKE INSERT (address, owner_id, is_primary) ON "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses FROM authenticated;


