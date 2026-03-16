-- Revert: schemas/agent_db_app_public/tables/deal_notes/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".deal_notes 
  DISABLE ROW LEVEL SECURITY;


