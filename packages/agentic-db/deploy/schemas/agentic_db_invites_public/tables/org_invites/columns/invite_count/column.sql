-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD COLUMN invite_count int;

