-- Deploy: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/alterations/alt0000001344
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.company_notes 
  ALTER COLUMN note_id SET NOT NULL;

