-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/error/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".feedback TO authenticated;

