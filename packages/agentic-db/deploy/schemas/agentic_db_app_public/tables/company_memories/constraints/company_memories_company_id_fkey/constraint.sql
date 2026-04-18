-- Deploy: schemas/agentic_db_app_public/tables/company_memories/constraints/company_memories_company_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.company_memories 
  ADD CONSTRAINT company_memories_company_id_fkey 
    FOREIGN KEY(company_id) 
    REFERENCES agentic_db_app_public.companies (id) 
    ON DELETE CASCADE;

