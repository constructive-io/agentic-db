-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tools/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/scheduled_jobs/columns/last_result/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".tools TO authenticated;

