-- Revert: schemas/agent_db_profiles_public/tables/app_profiles/columns/id/alterations/alt0000000218


ALTER TABLE agent_db_profiles_public.app_profiles 
  ALTER COLUMN id DROP NOT NULL;


