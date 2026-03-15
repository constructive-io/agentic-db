-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/columns/target_id/alterations/alt0000001127


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".feedback 
  ALTER COLUMN target_id DROP NOT NULL;


