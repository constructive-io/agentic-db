-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agent_db_memberships_public".org_memberships 
  ADD CONSTRAINT org_memberships_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

