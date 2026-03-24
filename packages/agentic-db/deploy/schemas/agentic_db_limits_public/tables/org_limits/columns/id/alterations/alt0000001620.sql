-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/columns/id/alterations/alt0000001620
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_limits_public/tables/org_limits/columns/id/column


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN id SET NOT NULL;

