-- Deploy: schemas/agentic_db_app_public/tables/company_images/columns/image_id/alterations/alt0000001151
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_images/table
-- requires: schemas/agentic_db_app_public/tables/company_images/columns/image_id/column


ALTER TABLE "agentic_db_app_public".company_images 
  ALTER COLUMN image_id SET NOT NULL;

