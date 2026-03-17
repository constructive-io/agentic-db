-- Revert: schemas/agentic_db_permissions_public/tables/app_permissions/policies/enable_row_level_security


ALTER TABLE "agentic_db_permissions_public".app_permissions 
  DISABLE ROW LEVEL SECURITY;


