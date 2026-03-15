-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/id/alterations/alt0000002762
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/logs_path/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ALTER COLUMN id SET NOT NULL;

