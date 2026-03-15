-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/constraints/org_members_actor_id_entity_id_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  DROP CONSTRAINT org_members_actor_id_entity_id_key;


