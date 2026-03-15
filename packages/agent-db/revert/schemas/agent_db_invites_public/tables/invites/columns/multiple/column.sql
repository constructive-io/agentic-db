-- Revert: schemas/agent_db_invites_public/tables/invites/columns/multiple/column


ALTER TABLE agent_db_invites_public.invites 
  DROP COLUMN multiple RESTRICT;


