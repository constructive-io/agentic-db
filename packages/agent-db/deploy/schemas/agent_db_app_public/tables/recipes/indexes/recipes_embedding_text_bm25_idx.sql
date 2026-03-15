-- Deploy: schemas/agent_db_app_public/tables/recipes/indexes/recipes_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/lists/indexes/lists_embedding_text_bm25_idx


CREATE INDEX recipes_embedding_text_bm25_idx ON agent_db_app_public.recipes USING bm25 ( embedding_text ) WITH ( text_config = english );

