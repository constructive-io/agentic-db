-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ADD COLUMN updated_at timestamptz;

