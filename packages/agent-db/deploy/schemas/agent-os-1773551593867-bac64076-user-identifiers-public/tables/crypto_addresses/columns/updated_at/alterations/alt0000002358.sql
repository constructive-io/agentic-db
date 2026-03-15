-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/updated_at/alterations/alt0000002358
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  ALTER COLUMN updated_at SET DEFAULT now();

