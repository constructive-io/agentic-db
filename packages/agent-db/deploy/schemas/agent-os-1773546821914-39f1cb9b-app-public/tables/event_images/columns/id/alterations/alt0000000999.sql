-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/id/alterations/alt0000000999
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

