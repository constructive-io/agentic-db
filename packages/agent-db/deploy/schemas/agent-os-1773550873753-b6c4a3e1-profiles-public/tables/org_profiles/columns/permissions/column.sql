-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/permissions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  ADD COLUMN permissions bit(24);

