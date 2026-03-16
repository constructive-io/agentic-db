-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/constraints/org_profile_permissions_permission_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agentic_db_permissions_public".org_permissions (id) 
    ON DELETE CASCADE;

