-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/action_config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/action_type/alterations/alt0000002853


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ADD COLUMN action_config jsonb;

