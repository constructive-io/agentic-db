-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/is_active/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  DROP COLUMN is_active RESTRICT;


