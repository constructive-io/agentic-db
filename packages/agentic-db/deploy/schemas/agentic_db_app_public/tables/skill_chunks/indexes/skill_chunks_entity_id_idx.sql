-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


CREATE INDEX skill_chunks_entity_id_idx ON agentic_db_app_public.skill_chunks USING BTREE ( entity_id );

