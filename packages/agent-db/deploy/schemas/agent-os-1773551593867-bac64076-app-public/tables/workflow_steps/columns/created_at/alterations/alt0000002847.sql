-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/created_at/alterations/alt0000002847
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/columns/created_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflow_steps/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflow_steps 
  ALTER COLUMN created_at SET NOT NULL;

