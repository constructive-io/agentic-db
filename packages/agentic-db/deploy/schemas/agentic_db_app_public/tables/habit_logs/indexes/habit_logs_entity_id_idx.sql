-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/entity_id/column


CREATE INDEX habit_logs_entity_id_idx ON agentic_db_app_public.habit_logs USING BTREE ( entity_id );

