-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/id/column


ALTER TABLE agent_db_invites_public.org_invites 
  DROP COLUMN id RESTRICT;


