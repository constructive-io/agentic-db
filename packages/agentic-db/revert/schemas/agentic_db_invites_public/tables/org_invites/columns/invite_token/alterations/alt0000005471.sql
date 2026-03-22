-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000005471




ALTER TABLE agentic_db_invites_public.org_invites 
    ALTER COLUMN invite_token DROP DEFAULT;



