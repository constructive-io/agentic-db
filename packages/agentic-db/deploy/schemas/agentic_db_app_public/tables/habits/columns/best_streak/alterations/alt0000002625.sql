-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/best_streak/alterations/alt0000002625
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/best_streak/column
-- requires: schemas/agentic_db_app_public/tables/habits/columns/current_streak/alterations/alt0000002624



ALTER TABLE "agentic_db_app_public".habits 
    ALTER COLUMN best_streak SET DEFAULT 0;

