-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/id/alterations/alt0000003139
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx



ALTER TABLE agentic_db_app_public.messages_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

