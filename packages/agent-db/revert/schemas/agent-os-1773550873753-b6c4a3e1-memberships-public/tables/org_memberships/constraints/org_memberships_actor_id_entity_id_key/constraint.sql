-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
  DROP CONSTRAINT org_memberships_actor_id_entity_id_key;


