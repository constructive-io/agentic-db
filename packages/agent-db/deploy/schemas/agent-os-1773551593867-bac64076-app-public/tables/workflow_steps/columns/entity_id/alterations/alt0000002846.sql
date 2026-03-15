-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/entity_id/alterations/alt0000002846
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/tags/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN entity_id SET NOT NULL;

