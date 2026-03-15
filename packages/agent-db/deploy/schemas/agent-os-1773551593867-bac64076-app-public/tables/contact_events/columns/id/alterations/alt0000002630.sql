-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/columns/id/alterations/alt0000002630
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_events/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_events 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

