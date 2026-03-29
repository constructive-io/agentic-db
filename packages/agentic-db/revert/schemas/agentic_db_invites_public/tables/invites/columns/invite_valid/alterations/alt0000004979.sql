-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000004979




ALTER TABLE agentic_db_invites_public.invites 
    ALTER COLUMN invite_valid DROP DEFAULT;



