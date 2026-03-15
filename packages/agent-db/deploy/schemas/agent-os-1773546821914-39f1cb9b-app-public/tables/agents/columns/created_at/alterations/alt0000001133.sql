-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/created_at/alterations/alt0000001133
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
    ALTER COLUMN created_at SET DEFAULT now();

