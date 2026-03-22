-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/updated_at/alterations/alt0000005451
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/updated_at/column


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN updated_at SET DEFAULT now();

