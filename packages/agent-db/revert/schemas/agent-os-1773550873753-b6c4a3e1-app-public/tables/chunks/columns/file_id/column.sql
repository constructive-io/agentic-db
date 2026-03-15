-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/columns/file_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chunks 
  DROP COLUMN file_id RESTRICT;


