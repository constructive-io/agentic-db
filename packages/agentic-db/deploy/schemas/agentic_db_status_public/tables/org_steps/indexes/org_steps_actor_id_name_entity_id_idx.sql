-- Deploy: schemas/agentic_db_status_public/tables/org_steps/indexes/org_steps_actor_id_name_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/name/column
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/column
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/entity_id/column


CREATE INDEX org_steps_actor_id_name_entity_id_idx ON agentic_db_status_public.org_steps USING BTREE ( actor_id, name, entity_id );

