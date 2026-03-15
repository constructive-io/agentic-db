-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/columns/is_primary/alterations/alt0000000746
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/columns/is_primary/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".crypto_addresses 
    ALTER COLUMN is_primary SET DEFAULT false;

