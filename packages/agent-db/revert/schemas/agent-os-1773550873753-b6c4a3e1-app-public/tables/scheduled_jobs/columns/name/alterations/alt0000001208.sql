-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/name/alterations/alt0000001208


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ALTER COLUMN name DROP NOT NULL;


