-- Deploy: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002256
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  ALTER COLUMN name SET NOT NULL;

