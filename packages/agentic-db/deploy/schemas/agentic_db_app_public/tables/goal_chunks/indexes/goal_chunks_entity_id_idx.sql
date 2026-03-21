-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/embedding/column


CREATE INDEX goal_chunks_entity_id_idx ON agentic_db_app_public.goal_chunks USING BTREE ( entity_id );

