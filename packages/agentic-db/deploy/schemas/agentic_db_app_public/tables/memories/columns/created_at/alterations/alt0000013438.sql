-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/created_at/alterations/alt0000013438
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx



ALTER TABLE agentic_db_app_public.memories 
    ALTER COLUMN created_at SET DEFAULT now();

