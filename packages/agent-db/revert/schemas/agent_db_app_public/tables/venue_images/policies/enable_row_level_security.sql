-- Revert: schemas/agent_db_app_public/tables/venue_images/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".venue_images 
  DISABLE ROW LEVEL SECURITY;


