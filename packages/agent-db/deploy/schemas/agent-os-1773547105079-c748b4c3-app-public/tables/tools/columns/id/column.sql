-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ADD COLUMN id uuid;

