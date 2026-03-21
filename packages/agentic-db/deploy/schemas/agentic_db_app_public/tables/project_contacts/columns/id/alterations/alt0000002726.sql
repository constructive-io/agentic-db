-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/id/alterations/alt0000002726
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx



ALTER TABLE "agentic_db_app_public".project_contacts 
    ALTER COLUMN id SET DEFAULT uuidv7();

