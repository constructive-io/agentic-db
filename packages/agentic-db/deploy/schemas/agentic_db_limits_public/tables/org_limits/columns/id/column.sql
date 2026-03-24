-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_limits_public.org_limits 
  ADD COLUMN id uuid;

