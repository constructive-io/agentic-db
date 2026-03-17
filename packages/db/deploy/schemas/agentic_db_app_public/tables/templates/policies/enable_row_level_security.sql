-- Deploy: schemas/agentic_db_app_public/tables/templates/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE "agentic_db_app_public".templates 
  ENABLE ROW LEVEL SECURITY;

