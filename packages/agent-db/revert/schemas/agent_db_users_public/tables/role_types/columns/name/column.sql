-- Revert: schemas/agent_db_users_public/tables/role_types/columns/name/column


ALTER TABLE "agent_db_users_public".role_types 
  DROP COLUMN name RESTRICT;


