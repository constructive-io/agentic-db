-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/updated_at/alterations/alt0000001980


ALTER TABLE "agentic_db_app_public".rules 
  ADD COLUMN title text;

