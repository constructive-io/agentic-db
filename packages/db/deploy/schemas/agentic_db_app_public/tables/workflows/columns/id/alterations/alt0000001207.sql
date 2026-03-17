-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/id/alterations/alt0000001207
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column



ALTER TABLE "agentic_db_app_public".workflows 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

