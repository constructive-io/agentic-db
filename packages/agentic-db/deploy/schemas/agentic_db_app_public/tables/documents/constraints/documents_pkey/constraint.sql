-- Deploy: schemas/agentic_db_app_public/tables/documents/constraints/documents_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.documents 
  ADD CONSTRAINT documents_pkey PRIMARY KEY (id);

