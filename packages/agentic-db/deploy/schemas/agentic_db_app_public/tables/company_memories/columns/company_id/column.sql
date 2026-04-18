-- Deploy: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.company_memories 
  ADD COLUMN company_id uuid;

