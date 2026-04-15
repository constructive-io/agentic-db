-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/embedding_stale/alterations/alt0000000971
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".venues 
  ALTER COLUMN embedding_stale SET NOT NULL;

