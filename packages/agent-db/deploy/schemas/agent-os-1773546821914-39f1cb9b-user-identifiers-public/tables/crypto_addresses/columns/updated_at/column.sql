-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".crypto_addresses 
  ADD COLUMN updated_at timestamptz;

