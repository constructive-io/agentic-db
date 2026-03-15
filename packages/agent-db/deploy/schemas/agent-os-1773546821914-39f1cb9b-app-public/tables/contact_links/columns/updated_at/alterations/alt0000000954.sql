-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/updated_at/alterations/alt0000000954
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/updated_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
    ALTER COLUMN updated_at SET DEFAULT now();

