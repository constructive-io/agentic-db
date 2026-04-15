-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


ALTER TABLE "agentic_db_app_public".contacts 
  ADD COLUMN created_at timestamptz;

