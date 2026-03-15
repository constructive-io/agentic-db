-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/logs_path/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ENABLE ROW LEVEL SECURITY;

