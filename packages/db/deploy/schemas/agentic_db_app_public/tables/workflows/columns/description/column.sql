-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/name/alterations/alt0000001213


ALTER TABLE "agentic_db_app_public".workflows 
  ADD COLUMN description text;

