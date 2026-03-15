-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/embedding/column


GRANT INSERT ON "agent-os-1773551593867-bac64076-app-public".prompts TO authenticated;

