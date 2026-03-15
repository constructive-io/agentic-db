-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/multiple/column


ALTER TABLE agent_db_invites_public.org_invites 
  DROP COLUMN multiple RESTRICT;


