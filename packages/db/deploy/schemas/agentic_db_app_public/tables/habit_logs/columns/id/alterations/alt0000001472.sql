-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/id/alterations/alt0000001472
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/id/column



ALTER TABLE "agentic_db_app_public".habit_logs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

