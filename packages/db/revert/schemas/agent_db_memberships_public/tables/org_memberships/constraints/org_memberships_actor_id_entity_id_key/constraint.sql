-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP CONSTRAINT org_memberships_actor_id_entity_id_key;


