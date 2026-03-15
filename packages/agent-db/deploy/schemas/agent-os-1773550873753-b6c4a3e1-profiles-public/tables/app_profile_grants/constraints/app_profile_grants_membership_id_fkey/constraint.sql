-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/constraints/app_profile_grants_membership_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_grants 
  ADD CONSTRAINT app_profile_grants_membership_id_fkey 
    FOREIGN KEY(membership_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships (id) 
    ON DELETE CASCADE;

