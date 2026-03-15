-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/columns/id/alterations/alt0000001021
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_events 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

