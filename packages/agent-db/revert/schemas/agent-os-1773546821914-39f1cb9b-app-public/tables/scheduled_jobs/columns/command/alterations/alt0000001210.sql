-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/command/alterations/alt0000001210


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  ALTER COLUMN command DROP NOT NULL;


