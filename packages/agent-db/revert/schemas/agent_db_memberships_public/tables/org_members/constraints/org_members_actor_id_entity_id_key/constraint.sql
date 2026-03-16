-- Revert: schemas/agent_db_memberships_public/tables/org_members/constraints/org_members_actor_id_entity_id_key/constraint


ALTER TABLE "agent_db_memberships_public".org_members 
  DROP CONSTRAINT org_members_actor_id_entity_id_key;


