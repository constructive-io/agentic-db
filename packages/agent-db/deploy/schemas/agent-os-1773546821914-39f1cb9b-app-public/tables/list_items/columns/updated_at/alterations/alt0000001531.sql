-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/updated_at/alterations/alt0000001531
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".list_items 
    ALTER COLUMN updated_at SET DEFAULT now();

