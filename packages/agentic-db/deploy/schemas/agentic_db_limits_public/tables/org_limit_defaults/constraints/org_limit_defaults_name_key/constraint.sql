-- Deploy: schemas/agentic_db_limits_public/tables/org_limit_defaults/constraints/org_limit_defaults_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limit_defaults/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_limits_public.org_limit_defaults 
  ADD CONSTRAINT org_limit_defaults_name_key 
    UNIQUE (name);

