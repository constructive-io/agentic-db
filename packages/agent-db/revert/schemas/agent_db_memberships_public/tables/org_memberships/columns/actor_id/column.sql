-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/actor_id/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN actor_id RESTRICT;


