-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".hiking_trails 
  ADD COLUMN embedding_stale boolean;

