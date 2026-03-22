-- Deploy: schemas/agentic_db_app_public/tables/codebases/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/config/column


ALTER TABLE "agentic_db_app_public".codebases 
  ADD COLUMN tags citext[];

