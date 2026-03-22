-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/language/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/default_branch/alterations/alt0000001553


ALTER TABLE "agentic_db_app_public".codebases 
  ADD COLUMN language text;

