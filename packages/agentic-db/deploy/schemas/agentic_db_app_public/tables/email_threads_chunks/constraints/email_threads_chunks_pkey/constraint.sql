-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/constraints/email_threads_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ADD CONSTRAINT email_threads_chunks_pkey PRIMARY KEY (id);

