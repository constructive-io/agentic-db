-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/id/alterations/alt0000002077
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

