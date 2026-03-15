-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/updated_at/column


ALTER TABLE agent_db_profiles_public.app_profiles 
  DROP COLUMN updated_at RESTRICT;


