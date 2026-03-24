-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/data/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.invites 
  ADD COLUMN data json;

