-- Deploy: schemas/agentic_db_app_public/tables/processes/alterations/alt0000001172
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE "agentic_db_app_public".processes 
  DISABLE ROW LEVEL SECURITY;

