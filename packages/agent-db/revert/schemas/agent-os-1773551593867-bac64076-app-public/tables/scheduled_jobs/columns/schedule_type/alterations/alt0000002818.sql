-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000002818


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ALTER COLUMN schedule_type DROP NOT NULL;


