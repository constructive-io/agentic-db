-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/id/alterations/alt0000004436
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/id/column


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN id SET NOT NULL;

