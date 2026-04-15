-- Deploy: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/table


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  ADD COLUMN id uuid;

