-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_embedding_text_bm25_idx


CREATE INDEX tools_embedding_text_bm25_idx ON "agent_db_app_public".tools USING bm25 ( embedding_text ) WITH ( text_config = english );

