-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/default_branch/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/description/column


ALTER TABLE "agentic_db_app_public".repositories 
  ADD COLUMN default_branch text;

