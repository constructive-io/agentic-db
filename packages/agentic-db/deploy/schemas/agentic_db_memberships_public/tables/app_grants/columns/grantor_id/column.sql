-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/columns/grantor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.app_grants 
  ADD COLUMN grantor_id uuid;

