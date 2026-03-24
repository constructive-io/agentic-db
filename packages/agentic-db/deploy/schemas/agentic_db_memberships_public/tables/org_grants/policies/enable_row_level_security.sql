-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.org_grants 
  ENABLE ROW LEVEL SECURITY;

