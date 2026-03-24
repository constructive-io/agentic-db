-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/constraints/app_profiles_slug_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ADD CONSTRAINT app_profiles_slug_key 
    UNIQUE (slug);

