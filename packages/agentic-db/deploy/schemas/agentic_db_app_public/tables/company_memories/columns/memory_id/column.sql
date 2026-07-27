-- Deploy: schemas/agentic_db_app_public/tables/company_memories/columns/memory_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table


ALTER TABLE agentic_db_app_public.company_memories 
  ADD COLUMN memory_id uuid;

