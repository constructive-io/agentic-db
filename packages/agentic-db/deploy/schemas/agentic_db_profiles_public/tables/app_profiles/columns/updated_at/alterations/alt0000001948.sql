-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/updated_at/alterations/alt0000001948
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/updated_at/column


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ALTER COLUMN updated_at SET DEFAULT now();

