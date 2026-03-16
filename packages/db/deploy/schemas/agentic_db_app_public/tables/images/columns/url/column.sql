-- Deploy: schemas/agentic_db_app_public/tables/images/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/updated_at/alterations/alt0000000856


ALTER TABLE "agentic_db_app_public".images 
  ADD COLUMN url text;

