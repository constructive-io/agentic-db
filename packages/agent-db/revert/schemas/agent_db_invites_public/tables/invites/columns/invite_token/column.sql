-- Revert: schemas/agent_db_invites_public/tables/invites/columns/invite_token/column


ALTER TABLE agent_db_invites_public.invites 
  DROP COLUMN invite_token RESTRICT;


