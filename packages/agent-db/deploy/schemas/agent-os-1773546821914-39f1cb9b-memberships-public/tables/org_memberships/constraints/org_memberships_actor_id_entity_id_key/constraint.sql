-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  ADD CONSTRAINT org_memberships_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

