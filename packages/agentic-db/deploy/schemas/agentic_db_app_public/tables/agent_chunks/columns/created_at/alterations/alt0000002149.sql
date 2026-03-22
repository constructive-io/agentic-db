-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/columns/created_at/alterations/alt0000002149
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/created_at/column



ALTER TABLE "agentic_db_app_public".agent_chunks 
    ALTER COLUMN created_at SET DEFAULT now();

