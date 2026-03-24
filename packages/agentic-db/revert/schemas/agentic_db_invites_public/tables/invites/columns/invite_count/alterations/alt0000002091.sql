-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000002091




ALTER TABLE agentic_db_invites_public.invites 
    ALTER COLUMN invite_count DROP DEFAULT;



