-- Revert: schemas/agentic_db_users_public/tables/users/columns/type/column


ALTER TABLE agentic_db_users_public.users 
  DROP COLUMN type RESTRICT;


