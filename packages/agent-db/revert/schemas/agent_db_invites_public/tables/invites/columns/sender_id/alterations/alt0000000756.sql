-- Revert: schemas/agent_db_invites_public/tables/invites/columns/sender_id/alterations/alt0000000756




ALTER TABLE agent_db_invites_public.invites 
    ALTER COLUMN sender_id DROP DEFAULT;



