-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".provider_sync_states 
  DISABLE ROW LEVEL SECURITY;


