-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.org_members 
  ADD COLUMN actor_id uuid;

