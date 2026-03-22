-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rules/columns/embedding_text/column


CREATE INDEX rules_embedding_text_bm25_idx ON "agentic_db_app_public".rules USING bm25 ( embedding_text ) WITH ( text_config = english );

