-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/created_at/alterations/alt0000000853
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  ALTER COLUMN created_at SET NOT NULL;

