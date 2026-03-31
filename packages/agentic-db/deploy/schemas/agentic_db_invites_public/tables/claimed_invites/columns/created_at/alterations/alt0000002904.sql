-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/created_at/alterations/alt0000002904
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/created_at/column


ALTER TABLE agentic_db_invites_public.claimed_invites 
  ALTER COLUMN created_at SET DEFAULT now();

