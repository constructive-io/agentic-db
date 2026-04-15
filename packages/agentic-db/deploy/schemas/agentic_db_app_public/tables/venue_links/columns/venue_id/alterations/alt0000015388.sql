-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/alterations/alt0000015388
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN venue_id SET NOT NULL;

