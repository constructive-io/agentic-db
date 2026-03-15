-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/id/alterations/alt0000002344
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses 
  ALTER COLUMN id SET NOT NULL;

