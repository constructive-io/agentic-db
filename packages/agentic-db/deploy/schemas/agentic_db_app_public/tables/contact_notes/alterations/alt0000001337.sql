-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/alterations/alt0000001337
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.contact_notes 
  DISABLE ROW LEVEL SECURITY;

