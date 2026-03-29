-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/id/alterations/alt0000010243


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN id DROP NOT NULL;


