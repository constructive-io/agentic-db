-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/grants/authenticated/update/grant


REVOKE UPDATE (address, owner_id, is_primary) ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".crypto_addresses FROM authenticated;


