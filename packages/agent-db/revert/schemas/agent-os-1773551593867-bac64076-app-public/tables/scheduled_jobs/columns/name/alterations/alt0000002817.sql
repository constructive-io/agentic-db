-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000002817


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ALTER COLUMN name DROP NOT NULL;


