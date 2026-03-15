-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_embedding_text_bm25_idx


CREATE INDEX projects_embedding_text_bm25_idx ON agent_db_app_public.projects USING bm25 ( embedding_text ) WITH ( text_config = english );

