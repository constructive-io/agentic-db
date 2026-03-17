-- Revert: schemas/agentic_db_users_public/tables/users/columns/display_name/column


ALTER TABLE "agentic_db_users_public".users 
  DROP COLUMN display_name RESTRICT;


