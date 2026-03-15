-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/membership_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  ADD COLUMN membership_id uuid;

