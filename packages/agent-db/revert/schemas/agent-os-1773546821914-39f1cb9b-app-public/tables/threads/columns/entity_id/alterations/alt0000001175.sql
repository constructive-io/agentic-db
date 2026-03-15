-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/entity_id/alterations/alt0000001175


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ALTER COLUMN entity_id DROP NOT NULL;


