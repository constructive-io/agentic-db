-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/notes_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/expected_close_date/column


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN notes_text text;

