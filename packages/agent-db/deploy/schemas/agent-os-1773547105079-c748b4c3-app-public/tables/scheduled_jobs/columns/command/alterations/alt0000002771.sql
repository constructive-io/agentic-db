-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/command/alterations/alt0000002771
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/run_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/command/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ALTER COLUMN command SET NOT NULL;

