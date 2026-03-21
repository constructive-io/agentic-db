-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/name/alterations/alt0000002654


ALTER TABLE "agentic_db_app_public".recipes 
  ADD COLUMN description text;

