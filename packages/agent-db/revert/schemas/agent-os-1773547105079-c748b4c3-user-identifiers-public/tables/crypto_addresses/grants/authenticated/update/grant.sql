-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/grants/authenticated/update/grant


REVOKE UPDATE (address, owner_id, is_primary) ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses FROM authenticated;


