-- Deploy: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/chunk_index/alterations/alt0000001055
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

