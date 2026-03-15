-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_default/alterations/alt0000002059
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_default/column



ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
    ALTER COLUMN is_default SET DEFAULT false;

