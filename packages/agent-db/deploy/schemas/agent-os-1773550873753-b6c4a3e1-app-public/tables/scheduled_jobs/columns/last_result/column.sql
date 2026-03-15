-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/last_result/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/run_count/alterations/alt0000001213


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".scheduled_jobs 
  ADD COLUMN last_result jsonb;

