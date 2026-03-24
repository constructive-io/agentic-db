-- Deploy: schemas/agentic_db_invites_public/tables/invites/alterations/alt0000002073
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.invites 
  DISABLE ROW LEVEL SECURITY;

