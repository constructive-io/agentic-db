-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/id/alterations/alt0000001336
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ALTER COLUMN id SET NOT NULL;

