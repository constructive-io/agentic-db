-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/embedding_stale/alterations/alt0000002346
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding_stale/column



ALTER TABLE "agentic_db_app_public".messages 
    ALTER COLUMN embedding_stale SET DEFAULT true;

