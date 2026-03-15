-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/delete_after_run/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  DROP COLUMN delete_after_run RESTRICT;


