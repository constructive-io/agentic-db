-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/constraints/app_memberships_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ADD CONSTRAINT app_memberships_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles (id) 
    ON DELETE CASCADE;

