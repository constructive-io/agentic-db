-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


CREATE INDEX autonomy_records_chunks_created_at_idx ON "agentic_db_app_public".autonomy_records_chunks ( created_at );

