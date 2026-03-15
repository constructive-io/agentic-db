-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/mime_type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".attachments 
  DROP COLUMN mime_type RESTRICT;


