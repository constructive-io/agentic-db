-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/columns/contact_id/alterations/alt0000000876
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_phones/columns/contact_id/column


ALTER TABLE agentic_db_app_public.contact_phones 
  ALTER COLUMN contact_id SET NOT NULL;

