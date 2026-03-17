-- Revert: schemas/agentic_db_users_public/tables/users/columns/profile_picture/column


ALTER TABLE "agentic_db_users_public".users 
  DROP COLUMN profile_picture RESTRICT;


