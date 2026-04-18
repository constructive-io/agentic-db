-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000000855
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/updated_at/column



ALTER TABLE agentic_db_app_public.venue_links 
    ALTER COLUMN updated_at SET DEFAULT now();

