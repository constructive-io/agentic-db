-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/id/alterations/alt0000001575
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ALTER COLUMN id SET NOT NULL;

