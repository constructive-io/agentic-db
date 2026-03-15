-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000001208


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  ALTER COLUMN name DROP NOT NULL;


