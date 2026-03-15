-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/source_type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".documents 
  DROP COLUMN source_type RESTRICT;


