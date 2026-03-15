-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/content/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  DROP COLUMN content RESTRICT;


