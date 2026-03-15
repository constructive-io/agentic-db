-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/tags/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".lists TO authenticated;

