-- Revert: schemas/agent_db_users_public/tables/role_types/columns/id/column


ALTER TABLE "agent_db_users_public".role_types 
  DROP COLUMN id RESTRICT;


