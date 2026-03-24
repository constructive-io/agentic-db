-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.claimed_invites 
  ENABLE ROW LEVEL SECURITY;

