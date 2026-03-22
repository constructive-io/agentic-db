-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/updated_at/alterations/alt0000002177
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/updated_at/column



ALTER TABLE "agentic_db_app_public".agent_log_chunks 
    ALTER COLUMN updated_at SET DEFAULT now();

