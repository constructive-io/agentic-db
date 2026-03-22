-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/columns/agent_id/alterations/alt0000002209
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ALTER COLUMN agent_id SET NOT NULL;

