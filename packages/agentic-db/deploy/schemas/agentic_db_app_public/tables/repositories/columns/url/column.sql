-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/name/alterations/alt0000002410


ALTER TABLE "agentic_db_app_public".repositories 
  ADD COLUMN url text;

