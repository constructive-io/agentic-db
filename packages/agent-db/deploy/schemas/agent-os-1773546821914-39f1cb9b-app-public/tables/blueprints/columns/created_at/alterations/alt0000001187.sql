-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/created_at/alterations/alt0000001187
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
    ALTER COLUMN created_at SET DEFAULT now();

