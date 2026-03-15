-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002767


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ALTER COLUMN updated_at DROP NOT NULL;


