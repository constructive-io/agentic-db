-- Deploy: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/alterations/alt0000000711
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_memories/indexes/contact_memories_memory_id_idx


ALTER TABLE agentic_db_app_public.company_memories 
  ALTER COLUMN company_id SET NOT NULL;

