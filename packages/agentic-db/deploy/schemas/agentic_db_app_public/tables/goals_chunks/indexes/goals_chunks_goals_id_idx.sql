-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/indexes/goals_chunks_goals_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/columns/goals_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX goals_chunks_goals_id_idx ON "agentic_db_app_public".goals_chunks USING BTREE ( goals_id );

