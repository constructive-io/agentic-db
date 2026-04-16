-- Deploy: schemas/agentic_db_app_public/tables/venue_links/alterations/alt0000000196
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.venue_links 
  DISABLE ROW LEVEL SECURITY;

