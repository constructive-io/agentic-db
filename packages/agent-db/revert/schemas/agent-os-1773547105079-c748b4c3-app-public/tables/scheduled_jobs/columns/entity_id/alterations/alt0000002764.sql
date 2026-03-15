-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/entity_id/alterations/alt0000002764


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ALTER COLUMN entity_id DROP NOT NULL;


