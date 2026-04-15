-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/columns/id/alterations/alt0000000873
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/id/column



ALTER TABLE "agentic_db_app_public".contacts_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

