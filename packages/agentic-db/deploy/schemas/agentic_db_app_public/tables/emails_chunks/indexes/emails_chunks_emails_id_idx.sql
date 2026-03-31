-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_emails_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/columns/emails_id/column


CREATE INDEX emails_chunks_emails_id_idx ON agentic_db_app_public.emails_chunks USING BTREE ( emails_id );

