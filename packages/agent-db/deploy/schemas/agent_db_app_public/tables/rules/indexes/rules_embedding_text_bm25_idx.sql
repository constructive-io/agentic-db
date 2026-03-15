-- Deploy: schemas/agent_db_app_public/tables/rules/indexes/rules_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_embedding_text_bm25_idx


CREATE INDEX rules_embedding_text_bm25_idx ON "agent_db_app_public".rules USING bm25 ( embedding_text ) WITH ( text_config = english );

