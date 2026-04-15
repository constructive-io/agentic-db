-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/expires_at/alterations/alt0000012781




ALTER TABLE agentic_db_invites_public.app_invites 
    ALTER COLUMN expires_at DROP DEFAULT;



