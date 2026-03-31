-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/constraints/org_profile_permissions_profile_id_permission_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_profile_id_permission_id_key 
    UNIQUE (profile_id, permission_id);

