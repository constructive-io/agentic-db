-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/entity_id/alterations/alt0000002812


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ALTER COLUMN entity_id DROP NOT NULL;


