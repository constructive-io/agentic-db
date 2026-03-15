-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/id/alterations/alt0000001215
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tools 
  ALTER COLUMN id SET NOT NULL;

