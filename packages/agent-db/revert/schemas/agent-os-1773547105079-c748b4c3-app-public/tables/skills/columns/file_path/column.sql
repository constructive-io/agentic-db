-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/file_path/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  DROP COLUMN file_path RESTRICT;


