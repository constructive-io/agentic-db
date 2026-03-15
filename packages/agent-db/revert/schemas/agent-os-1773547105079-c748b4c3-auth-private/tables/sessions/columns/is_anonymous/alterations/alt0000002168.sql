-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/is_anonymous/alterations/alt0000002168


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN is_anonymous DROP NOT NULL;


