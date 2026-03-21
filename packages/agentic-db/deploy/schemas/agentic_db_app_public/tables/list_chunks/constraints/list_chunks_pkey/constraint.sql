-- Deploy: schemas/agentic_db_app_public/tables/list_chunks/constraints/list_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/list_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  ADD CONSTRAINT list_chunks_pkey PRIMARY KEY (id);

