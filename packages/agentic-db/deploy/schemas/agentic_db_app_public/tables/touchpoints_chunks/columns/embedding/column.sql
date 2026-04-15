-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ADD COLUMN embedding vector(768);

