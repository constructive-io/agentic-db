-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/alterations/alt0000002973
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

