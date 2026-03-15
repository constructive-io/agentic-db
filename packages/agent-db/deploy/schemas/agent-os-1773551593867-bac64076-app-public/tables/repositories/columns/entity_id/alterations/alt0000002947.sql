-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/entity_id/alterations/alt0000002947
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".repositories 
  ALTER COLUMN entity_id SET NOT NULL;

