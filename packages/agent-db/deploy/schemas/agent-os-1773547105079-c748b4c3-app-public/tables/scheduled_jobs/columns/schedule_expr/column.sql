-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/schedule_expr/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000002770


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".scheduled_jobs 
  ADD COLUMN schedule_expr text;

