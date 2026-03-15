-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/columns/id/column


ALTER TABLE agent_db_invites_public.claimed_invites 
  DROP COLUMN id RESTRICT;


