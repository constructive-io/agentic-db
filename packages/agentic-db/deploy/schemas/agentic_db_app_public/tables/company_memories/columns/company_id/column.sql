-- Deploy: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/indexes/contact_memories_memory_id_idx


ALTER TABLE agentic_db_app_public.company_memories 
  ADD COLUMN company_id uuid;

