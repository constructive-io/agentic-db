-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/url/alterations/alt0000000193
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/url/column


ALTER TABLE agentic_db_app_public.contact_links 
  ALTER COLUMN url SET NOT NULL;

