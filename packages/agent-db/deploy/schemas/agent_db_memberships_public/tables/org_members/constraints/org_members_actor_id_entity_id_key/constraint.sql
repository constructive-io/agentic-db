-- Deploy: schemas/agent_db_memberships_public/tables/org_members/constraints/org_members_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


ALTER TABLE agent_db_memberships_public.org_members 
  ADD CONSTRAINT org_members_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

