-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/sender_id/alterations/alt0000012762




ALTER TABLE agentic_db_invites_public.app_invites 
    ALTER COLUMN sender_id DROP DEFAULT;



