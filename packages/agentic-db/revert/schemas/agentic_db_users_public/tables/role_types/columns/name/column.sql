-- Revert: schemas/agentic_db_users_public/tables/role_types/columns/name/column


ALTER TABLE "agentic_db_users_public".role_types 
  DROP COLUMN name RESTRICT;


