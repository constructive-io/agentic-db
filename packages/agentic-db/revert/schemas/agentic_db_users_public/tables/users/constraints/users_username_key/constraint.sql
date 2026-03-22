-- Revert: schemas/agentic_db_users_public/tables/users/constraints/users_username_key/constraint


ALTER TABLE agentic_db_users_public.users 
  DROP CONSTRAINT users_username_key;


