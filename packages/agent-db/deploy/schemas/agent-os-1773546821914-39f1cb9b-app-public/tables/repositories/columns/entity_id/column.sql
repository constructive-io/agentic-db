-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ADD COLUMN entity_id uuid;

