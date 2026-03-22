-- Deploy: schemas/agentic_db_app_public/tables/venue_links/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/embedding_stale/alterations/alt0000005764


ALTER TABLE agentic_db_app_public.venue_links 
  ENABLE ROW LEVEL SECURITY;

