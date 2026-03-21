-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/name/alterations/alt0000002663


ALTER TABLE "agentic_db_app_public".templates 
  ADD COLUMN description text;

