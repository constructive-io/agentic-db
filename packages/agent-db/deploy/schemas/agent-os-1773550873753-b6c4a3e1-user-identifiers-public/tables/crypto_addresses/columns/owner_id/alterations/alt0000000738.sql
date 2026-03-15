-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/columns/owner_id/alterations/alt0000000738
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/crypto_addresses/columns/owner_id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".crypto_addresses 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();

