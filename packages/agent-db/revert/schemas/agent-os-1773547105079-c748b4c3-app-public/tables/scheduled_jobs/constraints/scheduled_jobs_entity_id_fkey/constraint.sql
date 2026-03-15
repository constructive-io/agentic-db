-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/constraints/scheduled_jobs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  DROP CONSTRAINT scheduled_jobs_entity_id_fkey;


