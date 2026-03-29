-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/columns/id/alterations/alt0000010272


ALTER TABLE agentic_db_invites_public.claimed_invites 
  ALTER COLUMN id DROP NOT NULL;


