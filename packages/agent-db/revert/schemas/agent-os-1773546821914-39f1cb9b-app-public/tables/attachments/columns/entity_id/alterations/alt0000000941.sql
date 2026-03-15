-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/entity_id/alterations/alt0000000941


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ALTER COLUMN entity_id DROP NOT NULL;


