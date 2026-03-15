-- Revert: schemas/agent_db_app_public/tables/venue_links/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.venue_links 
  DISABLE ROW LEVEL SECURITY;


