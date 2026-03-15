-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/constraints/org_members_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  ADD CONSTRAINT org_members_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

