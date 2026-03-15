-- Revert: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/id/alterations/alt0000003418


ALTER TABLE "agent_db_profiles_public".app_profile_grants 
  ALTER COLUMN id DROP NOT NULL;


