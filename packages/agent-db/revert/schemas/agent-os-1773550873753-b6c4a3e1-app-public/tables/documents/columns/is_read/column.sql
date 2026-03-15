-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/is_read/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".documents 
  DROP COLUMN is_read RESTRICT;


