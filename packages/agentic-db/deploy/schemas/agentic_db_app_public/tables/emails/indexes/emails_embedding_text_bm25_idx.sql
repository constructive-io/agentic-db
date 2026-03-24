-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/emails/columns/embedding_text/column


CREATE INDEX emails_embedding_text_bm25_idx ON "agentic_db_app_public".emails USING bm25 ( embedding_text ) WITH ( text_config = english );

