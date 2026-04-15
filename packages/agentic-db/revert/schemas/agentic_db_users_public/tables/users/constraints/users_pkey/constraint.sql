-- Revert: schemas/agentic_db_users_public/tables/users/constraints/users_pkey/constraint


ALTER TABLE agentic_db_users_public.users 
  DROP CONSTRAINT users_pkey;


