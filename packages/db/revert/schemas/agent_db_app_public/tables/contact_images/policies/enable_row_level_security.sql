-- Revert: schemas/agent_db_app_public/tables/contact_images/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".contact_images 
  DISABLE ROW LEVEL SECURITY;


