-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/constraints/app_profile_permissions_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles (id) 
    ON DELETE CASCADE;

