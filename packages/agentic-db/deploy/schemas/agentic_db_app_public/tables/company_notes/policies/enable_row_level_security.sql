-- Deploy: schemas/agentic_db_app_public/tables/company_notes/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.company_notes 
  ENABLE ROW LEVEL SECURITY;

