-- Revert: schemas/agent_db_users_public/tables/users/columns/id/column


ALTER TABLE "agent_db_users_public".users 
  DROP COLUMN id RESTRICT;


