-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_idea_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx


CREATE INDEX idea_chunks_idea_id_idx ON "agentic_db_app_public".idea_chunks USING BTREE ( idea_id );

