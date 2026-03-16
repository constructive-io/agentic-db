-- Revert: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/created_at/alterations/alt0000001315


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  ALTER COLUMN created_at DROP DEFAULT;


