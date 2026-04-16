-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/created_at/alterations/alt0000015300
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/columns/created_at/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous



ALTER TABLE agentic_db_app_public.tags 
    ALTER COLUMN created_at SET DEFAULT now();

