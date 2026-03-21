-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/constraints/message_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/embedding/column


ALTER TABLE "agentic_db_app_public".message_chunks 
  ADD CONSTRAINT message_chunks_pkey PRIMARY KEY (id);

