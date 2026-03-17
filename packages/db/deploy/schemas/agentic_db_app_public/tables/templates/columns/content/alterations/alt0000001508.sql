-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/content/alterations/alt0000001508
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/type/column
-- requires: schemas/agentic_db_app_public/tables/templates/columns/content/column


ALTER TABLE "agentic_db_app_public".templates 
  ALTER COLUMN content SET NOT NULL;

