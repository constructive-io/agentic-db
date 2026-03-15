-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000003446


ALTER TABLE "agent_db_profiles_public".app_profiles 
  ALTER COLUMN is_system DROP NOT NULL;


