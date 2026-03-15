-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/alterations/alt0000001214
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  DISABLE ROW LEVEL SECURITY;

