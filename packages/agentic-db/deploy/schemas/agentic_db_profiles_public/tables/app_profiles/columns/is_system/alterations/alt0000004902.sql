-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000004902
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_system/column


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN is_system SET NOT NULL;

