-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/entity_id/alterations/alt0000001203


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ALTER COLUMN entity_id DROP NOT NULL;


