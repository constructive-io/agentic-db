-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/embedding/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".prompts TO authenticated;

