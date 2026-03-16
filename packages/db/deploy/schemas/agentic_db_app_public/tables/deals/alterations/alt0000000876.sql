-- Deploy: schemas/agentic_db_app_public/tables/deals/alterations/alt0000000876
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".deals 
  DISABLE ROW LEVEL SECURITY;

