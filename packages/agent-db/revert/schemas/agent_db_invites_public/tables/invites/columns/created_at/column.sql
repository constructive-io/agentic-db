-- Revert: schemas/agent_db_invites_public/tables/invites/columns/created_at/column


ALTER TABLE agent_db_invites_public.invites 
  DROP COLUMN created_at RESTRICT;


