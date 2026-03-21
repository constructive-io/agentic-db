-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/id/alterations/alt0000003690
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column



ALTER TABLE agentic_db_app_public.contacts 
    ALTER COLUMN id SET DEFAULT uuidv7();

