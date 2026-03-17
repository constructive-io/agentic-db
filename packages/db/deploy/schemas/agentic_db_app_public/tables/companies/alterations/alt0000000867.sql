-- Deploy: schemas/agentic_db_app_public/tables/companies/alterations/alt0000000867
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".companies 
  DISABLE ROW LEVEL SECURITY;

