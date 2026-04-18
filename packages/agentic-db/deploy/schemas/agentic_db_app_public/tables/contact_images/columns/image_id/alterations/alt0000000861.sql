-- Deploy: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/alterations/alt0000000861
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/column


ALTER TABLE agentic_db_app_public.contact_images 
  ALTER COLUMN image_id SET NOT NULL;

