-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  DROP COLUMN updated_at RESTRICT;


