-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000000220


ALTER TABLE agent_db_profiles_public.app_profiles 
  ALTER COLUMN name DROP NOT NULL;


