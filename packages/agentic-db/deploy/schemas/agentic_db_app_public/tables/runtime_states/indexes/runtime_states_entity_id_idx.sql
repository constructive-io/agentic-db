-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/entity_id/column


CREATE INDEX runtime_states_entity_id_idx ON agentic_db_app_public.runtime_states USING BTREE ( entity_id );

