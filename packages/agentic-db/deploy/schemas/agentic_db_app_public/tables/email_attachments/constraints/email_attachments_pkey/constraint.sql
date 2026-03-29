-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/constraints/email_attachments_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.email_attachments 
  ADD CONSTRAINT email_attachments_pkey PRIMARY KEY (id);

