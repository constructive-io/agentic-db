-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/intent_trigger/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".goals TO authenticated;

