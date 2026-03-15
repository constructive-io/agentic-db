-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ENABLE ROW LEVEL SECURITY;

