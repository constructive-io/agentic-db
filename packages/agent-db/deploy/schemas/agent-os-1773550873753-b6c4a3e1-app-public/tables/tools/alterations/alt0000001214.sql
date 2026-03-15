-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/alterations/alt0000001214
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tools/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tools 
  DISABLE ROW LEVEL SECURITY;

