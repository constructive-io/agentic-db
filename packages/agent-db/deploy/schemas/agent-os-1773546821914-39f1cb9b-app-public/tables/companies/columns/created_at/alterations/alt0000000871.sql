-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/created_at/alterations/alt0000000871
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ALTER COLUMN created_at SET NOT NULL;

