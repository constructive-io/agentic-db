-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000003682


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


