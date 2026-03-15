-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ENABLE ROW LEVEL SECURITY;

