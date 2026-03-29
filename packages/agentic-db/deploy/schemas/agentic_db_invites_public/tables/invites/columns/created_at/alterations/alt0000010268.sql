-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/created_at/alterations/alt0000010268
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/created_at/column


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN created_at SET DEFAULT now();

