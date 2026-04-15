-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/columns/contact_id/alterations/alt0000015415
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_relationships 
  ALTER COLUMN contact_id SET NOT NULL;

