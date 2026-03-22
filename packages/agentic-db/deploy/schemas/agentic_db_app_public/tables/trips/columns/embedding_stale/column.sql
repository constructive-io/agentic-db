-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".trips 
  ADD COLUMN embedding_stale boolean;

