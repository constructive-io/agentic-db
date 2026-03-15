-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/mime_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  DROP COLUMN mime_type RESTRICT;


