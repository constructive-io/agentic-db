-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/run_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  DROP COLUMN run_count RESTRICT;


