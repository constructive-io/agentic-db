-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/constraints/app_profile_permissions_profile_id_permission_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE "agentic_db_profiles_public".app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_profile_id_permission_id_key 
    UNIQUE (profile_id, permission_id);

