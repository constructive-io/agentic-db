-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ADD COLUMN description text;

