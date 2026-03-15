-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/id/alterations/alt0000000482
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_definition_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

