-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/created_at/alterations/alt0000002187


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  ALTER COLUMN created_at DROP DEFAULT;


