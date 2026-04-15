-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table


ALTER TABLE "agentic_db_app_public".venues 
  ADD COLUMN embedding vector(768);

