-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000002487




ALTER TABLE agentic_db_invites_public.invites 
    ALTER COLUMN expires_at DROP DEFAULT;



