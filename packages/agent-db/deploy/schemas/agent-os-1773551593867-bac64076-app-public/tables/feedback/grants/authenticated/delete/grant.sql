-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/error/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".feedback TO authenticated;

