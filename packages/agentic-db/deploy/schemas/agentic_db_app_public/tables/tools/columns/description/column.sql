-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/name/alterations/alt0000002199


ALTER TABLE "agentic_db_app_public".tools 
  ADD COLUMN description text;

