-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE "agentic_db_app_public".tags 
  ADD COLUMN id uuid;

