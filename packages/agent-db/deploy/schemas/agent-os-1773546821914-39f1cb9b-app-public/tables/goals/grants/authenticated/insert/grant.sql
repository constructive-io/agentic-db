-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skills/columns/intent_trigger/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".goals TO authenticated;

