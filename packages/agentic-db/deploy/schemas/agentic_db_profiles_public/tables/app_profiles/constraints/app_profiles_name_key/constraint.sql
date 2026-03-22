-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/constraints/app_profiles_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table


ALTER TABLE agentic_db_profiles_public.app_profiles 
  ADD CONSTRAINT app_profiles_name_key 
    UNIQUE (name);

