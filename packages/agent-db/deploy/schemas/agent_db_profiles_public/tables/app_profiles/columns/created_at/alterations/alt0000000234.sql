-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/created_at/alterations/alt0000000234
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/created_at/column


ALTER TABLE agent_db_profiles_public.app_profiles 
  ALTER COLUMN created_at SET DEFAULT now();

