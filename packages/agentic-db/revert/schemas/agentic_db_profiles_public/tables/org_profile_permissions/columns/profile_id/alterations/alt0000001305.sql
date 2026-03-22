-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/profile_id/alterations/alt0000001305


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;


