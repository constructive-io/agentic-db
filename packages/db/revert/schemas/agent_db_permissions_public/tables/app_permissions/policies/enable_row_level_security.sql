-- Revert: schemas/agent_db_permissions_public/tables/app_permissions/policies/enable_row_level_security


ALTER TABLE "agent_db_permissions_public".app_permissions 
  DISABLE ROW LEVEL SECURITY;


