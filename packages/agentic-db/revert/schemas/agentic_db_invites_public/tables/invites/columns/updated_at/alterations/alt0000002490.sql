-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/updated_at/alterations/alt0000002490


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN updated_at DROP DEFAULT;


