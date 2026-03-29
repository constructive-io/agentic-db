-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_autonomy_records_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/autonomy_records_id/column


CREATE INDEX autonomy_records_chunks_autonomy_records_id_idx ON agentic_db_app_public.autonomy_records_chunks USING BTREE ( autonomy_records_id );

