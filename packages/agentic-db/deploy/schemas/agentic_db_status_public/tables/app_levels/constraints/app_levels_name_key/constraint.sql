-- Deploy: schemas/agentic_db_status_public/tables/app_levels/constraints/app_levels_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.app_levels 
  ADD CONSTRAINT app_levels_name_key 
    UNIQUE (name);

