-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".workflow_steps TO authenticated;

