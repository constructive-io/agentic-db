-- Revert: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
  DROP COLUMN id RESTRICT;


