-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/first_name/alterations/alt0000001710
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/first_name/column
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000001709


ALTER TABLE "agentic_db_app_public".contacts 
  ALTER COLUMN first_name SET NOT NULL;

