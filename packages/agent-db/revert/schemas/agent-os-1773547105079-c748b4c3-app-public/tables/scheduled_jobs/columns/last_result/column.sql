-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  DROP COLUMN last_result RESTRICT;


