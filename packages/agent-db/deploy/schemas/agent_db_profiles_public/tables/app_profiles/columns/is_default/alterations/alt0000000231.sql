-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_default/alterations/alt0000000231
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_default/column


ALTER TABLE agent_db_profiles_public.app_profiles 
  ALTER COLUMN is_default SET NOT NULL;

