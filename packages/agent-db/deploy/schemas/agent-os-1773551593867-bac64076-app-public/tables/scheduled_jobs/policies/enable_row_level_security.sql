-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/logs_path/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ENABLE ROW LEVEL SECURITY;

