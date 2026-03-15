-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/updated_at/alterations/alt0000000864
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ALTER COLUMN updated_at SET NOT NULL;

