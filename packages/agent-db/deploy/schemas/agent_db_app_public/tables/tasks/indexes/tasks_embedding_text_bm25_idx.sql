-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_embedding_text_bm25_idx


CREATE INDEX tasks_embedding_text_bm25_idx ON "agent_db_app_public".tasks USING bm25 ( embedding_text ) WITH ( text_config = english );

