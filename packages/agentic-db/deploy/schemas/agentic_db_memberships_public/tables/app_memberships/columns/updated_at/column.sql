-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ADD COLUMN updated_at timestamptz;

