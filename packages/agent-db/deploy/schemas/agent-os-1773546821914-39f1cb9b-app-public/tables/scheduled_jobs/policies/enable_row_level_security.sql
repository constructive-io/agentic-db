-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/logs_path/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".scheduled_jobs 
  ENABLE ROW LEVEL SECURITY;

