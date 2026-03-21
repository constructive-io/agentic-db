-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/last_name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/first_name/alterations/alt0000001710


ALTER TABLE "agentic_db_app_public".contacts 
  ADD COLUMN last_name text;

