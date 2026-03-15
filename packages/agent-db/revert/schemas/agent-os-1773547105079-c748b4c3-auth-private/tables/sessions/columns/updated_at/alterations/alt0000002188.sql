-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/updated_at/alterations/alt0000002188


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN updated_at DROP DEFAULT;


