-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/command/alterations/alt0000002771


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ALTER COLUMN command DROP NOT NULL;


