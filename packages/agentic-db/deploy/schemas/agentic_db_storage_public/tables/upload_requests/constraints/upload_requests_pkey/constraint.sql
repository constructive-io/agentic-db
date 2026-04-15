-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/constraints/upload_requests_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


ALTER TABLE agentic_db_storage_public.upload_requests 
  ADD CONSTRAINT upload_requests_pkey PRIMARY KEY (id);

