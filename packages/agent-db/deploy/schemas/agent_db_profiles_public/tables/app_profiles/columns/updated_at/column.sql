-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table


ALTER TABLE agent_db_profiles_public.app_profiles 
  ADD COLUMN updated_at timestamptz;

