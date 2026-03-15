-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/table


GRANT INSERT (address, owner_id, is_primary) ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".crypto_addresses TO authenticated;

