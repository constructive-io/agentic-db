-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/updated_at/alterations/alt0000001197
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ALTER COLUMN updated_at SET NOT NULL;

