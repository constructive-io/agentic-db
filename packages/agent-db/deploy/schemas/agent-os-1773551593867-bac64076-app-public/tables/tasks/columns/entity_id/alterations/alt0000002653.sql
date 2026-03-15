-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/entity_id/alterations/alt0000002653
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ALTER COLUMN entity_id SET NOT NULL;

