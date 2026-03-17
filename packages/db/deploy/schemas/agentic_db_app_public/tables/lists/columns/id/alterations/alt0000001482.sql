-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/id/alterations/alt0000001482
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column


ALTER TABLE "agentic_db_app_public".lists 
  ALTER COLUMN id SET NOT NULL;

