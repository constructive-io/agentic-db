-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/permissions/alterations/alt0000000444
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/permissions/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

