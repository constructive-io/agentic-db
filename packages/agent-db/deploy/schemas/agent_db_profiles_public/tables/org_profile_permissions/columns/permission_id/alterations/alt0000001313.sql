-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000001313
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/permission_id/column


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ALTER COLUMN permission_id SET NOT NULL;

