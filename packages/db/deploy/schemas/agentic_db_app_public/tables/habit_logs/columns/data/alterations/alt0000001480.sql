-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/data/alterations/alt0000001480
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/data/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/calories/column



ALTER TABLE "agentic_db_app_public".habit_logs 
    ALTER COLUMN data SET DEFAULT '{}';

