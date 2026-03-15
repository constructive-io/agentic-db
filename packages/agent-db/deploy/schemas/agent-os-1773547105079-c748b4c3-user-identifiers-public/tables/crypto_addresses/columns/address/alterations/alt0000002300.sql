-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/address/alterations/alt0000002300
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/columns/address/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses 
  ALTER COLUMN address SET NOT NULL;

