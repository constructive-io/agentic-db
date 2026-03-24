-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/sender_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.claimed_invites 
  ADD COLUMN sender_id uuid;

