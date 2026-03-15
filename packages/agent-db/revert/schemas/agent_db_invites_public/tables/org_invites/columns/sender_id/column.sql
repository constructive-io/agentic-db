-- Revert: schemas/agent_db_invites_public/tables/org_invites/columns/sender_id/column


ALTER TABLE agent_db_invites_public.org_invites 
  DROP COLUMN sender_id RESTRICT;


