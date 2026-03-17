-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/verification/column


ALTER TABLE "agentic_db_app_public".rules 
  ADD COLUMN tags citext[];

