-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/constraints/app_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent_db_permissions_public".app_permissions (id) 
    ON DELETE CASCADE;

