-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/entity_id/alterations/alt0000001044


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


