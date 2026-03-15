-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/file_path/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  DROP COLUMN file_path RESTRICT;


