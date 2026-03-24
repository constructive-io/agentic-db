-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.org_achievements 
  ADD CONSTRAINT org_achievements_actor_id_name_entity_id_key 
    UNIQUE (actor_id, name, entity_id);

