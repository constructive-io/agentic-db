-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/timeout_ms/column


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".workflow_runs TO authenticated;

