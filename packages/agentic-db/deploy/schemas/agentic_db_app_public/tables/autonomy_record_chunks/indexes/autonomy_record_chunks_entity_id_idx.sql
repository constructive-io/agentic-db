-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/entity_id/column


CREATE INDEX autonomy_record_chunks_entity_id_idx ON "agentic_db_app_public".autonomy_record_chunks USING BTREE ( entity_id );

