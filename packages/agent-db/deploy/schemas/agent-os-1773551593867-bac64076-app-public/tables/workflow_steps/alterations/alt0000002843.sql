-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/alterations/alt0000002843
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  DISABLE ROW LEVEL SECURITY;

