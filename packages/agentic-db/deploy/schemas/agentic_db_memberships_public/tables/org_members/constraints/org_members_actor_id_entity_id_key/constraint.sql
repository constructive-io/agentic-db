-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/constraints/org_members_actor_id_entity_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.org_members 
  ADD CONSTRAINT org_members_actor_id_entity_id_key 
    UNIQUE (actor_id, entity_id);

