-- Deploy: schemas/agentic_db_app_public/tables/tags/alterations/alt0000001772
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE "agentic_db_app_public".tags 
  DISABLE ROW LEVEL SECURITY;

