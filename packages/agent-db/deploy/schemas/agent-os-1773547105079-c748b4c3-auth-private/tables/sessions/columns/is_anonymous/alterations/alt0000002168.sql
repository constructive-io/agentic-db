-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/is_anonymous/alterations/alt0000002168
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/is_anonymous/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN is_anonymous SET NOT NULL;

