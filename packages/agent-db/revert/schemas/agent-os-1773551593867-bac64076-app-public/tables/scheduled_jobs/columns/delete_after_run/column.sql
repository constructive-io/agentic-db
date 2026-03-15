-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/delete_after_run/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  DROP COLUMN delete_after_run RESTRICT;


