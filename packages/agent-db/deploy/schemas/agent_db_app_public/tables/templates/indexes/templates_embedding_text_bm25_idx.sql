-- Deploy: schemas/agent_db_app_public/tables/templates/indexes/templates_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/recipes/indexes/recipes_embedding_text_bm25_idx


CREATE INDEX templates_embedding_text_bm25_idx ON "agent_db_app_public".templates USING bm25 ( embedding_text ) WITH ( text_config = english );

