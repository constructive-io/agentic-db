-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000002479
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_count/column


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN invite_count SET NOT NULL;

