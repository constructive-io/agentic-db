-- Deploy: schemas/agent_db_app_public/tables/repositories/indexes/repositories_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_embedding_text_bm25_idx


CREATE INDEX repositories_embedding_text_bm25_idx ON "agent_db_app_public".repositories USING bm25 ( embedding_text ) WITH ( text_config = english );

