-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/summary/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  DROP COLUMN summary RESTRICT;


