-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/columns/metadata/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  ADD COLUMN metadata jsonb;

