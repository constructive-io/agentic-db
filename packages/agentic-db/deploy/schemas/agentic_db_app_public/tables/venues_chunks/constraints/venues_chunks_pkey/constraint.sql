-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/constraints/venues_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table


ALTER TABLE "agentic_db_app_public".venues_chunks 
  ADD CONSTRAINT venues_chunks_pkey PRIMARY KEY (id);

