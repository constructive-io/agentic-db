-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  DROP COLUMN last_accessed_at RESTRICT;


