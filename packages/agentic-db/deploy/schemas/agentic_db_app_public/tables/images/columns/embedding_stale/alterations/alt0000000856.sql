-- Deploy: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/alterations/alt0000000856
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".images 
  ALTER COLUMN embedding_stale SET NOT NULL;

