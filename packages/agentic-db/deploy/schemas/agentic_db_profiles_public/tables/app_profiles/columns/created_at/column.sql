-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ADD COLUMN created_at timestamptz;

