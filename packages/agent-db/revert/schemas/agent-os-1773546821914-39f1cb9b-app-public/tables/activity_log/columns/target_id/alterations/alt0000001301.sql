-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/target_id/alterations/alt0000001301


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ALTER COLUMN target_id DROP NOT NULL;


