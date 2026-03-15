-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/is_default/alterations/alt0000000450
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/is_default/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
    ALTER COLUMN is_default SET DEFAULT false;

