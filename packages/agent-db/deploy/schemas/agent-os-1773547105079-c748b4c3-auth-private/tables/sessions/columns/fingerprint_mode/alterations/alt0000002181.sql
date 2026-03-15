-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000002181
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/fingerprint_mode/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN fingerprint_mode SET NOT NULL;

