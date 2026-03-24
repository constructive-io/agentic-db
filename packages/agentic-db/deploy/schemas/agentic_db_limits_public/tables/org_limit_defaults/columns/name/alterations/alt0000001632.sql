-- Deploy: schemas/agentic_db_limits_public/tables/org_limit_defaults/columns/name/alterations/alt0000001632
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limit_defaults/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_limits_public/tables/org_limit_defaults/columns/name/column


ALTER TABLE agentic_db_limits_public.org_limit_defaults 
  ALTER COLUMN name SET NOT NULL;

