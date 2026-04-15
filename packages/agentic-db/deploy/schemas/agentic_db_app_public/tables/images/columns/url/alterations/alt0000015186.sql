-- Deploy: schemas/agentic_db_app_public/tables/images/columns/url/alterations/alt0000015186
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/url/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.images 
  ALTER COLUMN url SET NOT NULL;

