-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  DROP CONSTRAINT org_memberships_actor_id_entity_id_key;


