-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/entity_id/alterations/alt0000001194


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ALTER COLUMN entity_id DROP NOT NULL;


