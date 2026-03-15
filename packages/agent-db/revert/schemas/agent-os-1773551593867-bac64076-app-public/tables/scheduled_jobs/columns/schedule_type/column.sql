-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  DROP COLUMN schedule_type RESTRICT;


