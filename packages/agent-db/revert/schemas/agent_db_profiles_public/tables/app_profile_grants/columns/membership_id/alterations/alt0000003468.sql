-- Revert: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/membership_id/alterations/alt0000003468


ALTER TABLE "agent_db_profiles_public".app_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


