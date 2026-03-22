-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_habit_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/habit_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


CREATE INDEX habit_chunks_habit_id_idx ON "agentic_db_app_public".habit_chunks USING BTREE ( habit_id );

