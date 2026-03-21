-- Revert: schemas/agentic_db_app_public/tables/webhooks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".webhooks 
  DISABLE ROW LEVEL SECURITY;


