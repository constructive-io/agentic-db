-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/sender_id/alterations/alt0000004972


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN sender_id DROP NOT NULL;


