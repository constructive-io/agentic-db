-- Revert: schemas/agentic_db_users_public/tables/users/constraints/users_type_fkey/constraint


ALTER TABLE "agentic_db_users_public".users 
  DROP CONSTRAINT users_type_fkey;


