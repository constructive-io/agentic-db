-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/run_count/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  DROP COLUMN run_count RESTRICT;


