-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table


ALTER TABLE agentic_db_profiles_public.org_profiles 
  ADD COLUMN is_system boolean;

