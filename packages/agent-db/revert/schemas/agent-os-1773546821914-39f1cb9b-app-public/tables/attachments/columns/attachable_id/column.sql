-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/attachable_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  DROP COLUMN attachable_id RESTRICT;


