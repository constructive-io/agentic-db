-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_runs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/timeout_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_runs 
  ENABLE ROW LEVEL SECURITY;

