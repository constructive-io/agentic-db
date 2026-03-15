-- Deploy: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets 
  ENABLE ROW LEVEL SECURITY;

