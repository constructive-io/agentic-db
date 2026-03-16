-- Revert: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/alterations/alt0000001092


ALTER TABLE "agent_db_profiles_public".app_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;


