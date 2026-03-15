-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/tags/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".habit_logs TO authenticated;

