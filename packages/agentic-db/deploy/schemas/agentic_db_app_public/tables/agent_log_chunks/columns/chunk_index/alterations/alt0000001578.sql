-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/chunk_index/alterations/alt0000001578
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

