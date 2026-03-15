-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/updated_at/alterations/alt0000001273
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ALTER COLUMN updated_at SET NOT NULL;

