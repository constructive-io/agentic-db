-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/email/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table


ALTER TABLE agentic_db_invites_public.invites 
  ADD COLUMN email email;

