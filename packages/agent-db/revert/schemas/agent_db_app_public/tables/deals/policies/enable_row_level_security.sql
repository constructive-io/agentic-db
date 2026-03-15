-- Revert: schemas/agent_db_app_public/tables/deals/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".deals 
  DISABLE ROW LEVEL SECURITY;


