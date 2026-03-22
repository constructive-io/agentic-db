-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/indexes/autonomy_record_links_target_record_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/target_record_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_autonomy_record_id_idx


CREATE INDEX autonomy_record_links_target_record_id_idx ON "agentic_db_app_public".autonomy_record_links USING BTREE ( target_record_id );

