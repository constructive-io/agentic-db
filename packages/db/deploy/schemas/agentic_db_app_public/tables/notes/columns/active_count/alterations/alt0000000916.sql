-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/active_count/alterations/alt0000000916
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/overview/column
-- requires: schemas/agentic_db_app_public/tables/notes/columns/active_count/column



ALTER TABLE "agentic_db_app_public".notes 
    ALTER COLUMN active_count SET DEFAULT 0;

