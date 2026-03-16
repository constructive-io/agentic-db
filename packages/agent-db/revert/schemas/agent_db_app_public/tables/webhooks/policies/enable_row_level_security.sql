-- Revert: schemas/agent_db_app_public/tables/webhooks/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".webhooks 
  DISABLE ROW LEVEL SECURITY;


