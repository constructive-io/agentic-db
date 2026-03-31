-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


CREATE INDEX autonomy_records_embedding_text_bm25_idx ON "agentic_db_app_public".autonomy_records USING bm25 ( embedding_text ) WITH ( text_config = english );

