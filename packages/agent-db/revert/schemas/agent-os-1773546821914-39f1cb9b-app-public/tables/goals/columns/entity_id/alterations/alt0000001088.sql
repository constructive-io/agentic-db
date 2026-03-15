-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/entity_id/alterations/alt0000001088


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  ALTER COLUMN entity_id DROP NOT NULL;


