-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/constraints/hiking_trails_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  ADD CONSTRAINT hiking_trails_chunks_pkey PRIMARY KEY (id);

