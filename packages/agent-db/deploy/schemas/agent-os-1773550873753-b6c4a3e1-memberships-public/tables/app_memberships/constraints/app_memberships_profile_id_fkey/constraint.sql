-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/constraints/app_memberships_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ADD CONSTRAINT app_memberships_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles (id) 
    ON DELETE CASCADE;

