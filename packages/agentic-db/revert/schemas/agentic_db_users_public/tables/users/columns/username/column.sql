-- Revert: schemas/agentic_db_users_public/tables/users/columns/username/column


ALTER TABLE "agentic_db_users_public".users 
  DROP COLUMN username RESTRICT;


