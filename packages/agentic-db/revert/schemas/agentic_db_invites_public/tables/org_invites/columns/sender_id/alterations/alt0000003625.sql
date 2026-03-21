-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/sender_id/alterations/alt0000003625




ALTER TABLE agentic_db_invites_public.org_invites 
    ALTER COLUMN sender_id DROP DEFAULT;



