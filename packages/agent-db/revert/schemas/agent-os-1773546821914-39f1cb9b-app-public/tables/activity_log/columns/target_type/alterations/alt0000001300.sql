-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/target_type/alterations/alt0000001300


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ALTER COLUMN target_type DROP NOT NULL;


