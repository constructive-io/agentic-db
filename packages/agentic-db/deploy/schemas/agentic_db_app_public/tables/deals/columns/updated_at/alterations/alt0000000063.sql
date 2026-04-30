-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/updated_at/alterations/alt0000000063
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous



ALTER TABLE agentic_db_app_public.deals 
    ALTER COLUMN updated_at SET DEFAULT now();

