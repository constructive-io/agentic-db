-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/main_image_id/column
-- requires: schemas/agentic_db_app_public/tables/companies/columns/embedding_text/column


CREATE INDEX companies_embedding_text_bm25_idx ON agentic_db_app_public.companies USING bm25 ( embedding_text ) WITH ( text_config = english );

