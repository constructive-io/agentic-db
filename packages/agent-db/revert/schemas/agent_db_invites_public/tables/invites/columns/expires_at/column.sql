-- Revert: schemas/agent_db_invites_public/tables/invites/columns/expires_at/column


ALTER TABLE agent_db_invites_public.invites 
  DROP COLUMN expires_at RESTRICT;


