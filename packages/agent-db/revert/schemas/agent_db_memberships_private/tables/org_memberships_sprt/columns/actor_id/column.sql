-- Revert: schemas/agent_db_memberships_private/tables/org_memberships_sprt/columns/actor_id/column


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  DROP COLUMN actor_id RESTRICT;


