-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/indexes/memory_chunks_memory_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx


CREATE INDEX memory_chunks_memory_id_idx ON "agentic_db_app_public".memory_chunks USING BTREE ( memory_id );

