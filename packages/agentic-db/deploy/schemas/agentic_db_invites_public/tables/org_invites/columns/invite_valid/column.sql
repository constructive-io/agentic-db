-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_valid/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD COLUMN invite_valid boolean;

