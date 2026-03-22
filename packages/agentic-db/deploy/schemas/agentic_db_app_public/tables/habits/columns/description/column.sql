-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/name/alterations/alt0000001681


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN description text;

