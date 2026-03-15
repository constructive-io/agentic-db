-- Revert: schemas/agent_db_users_public/tables/users/constraints/users_user_id_fkey/constraint


ALTER TABLE agent_db_users_public.users 
  DROP CONSTRAINT users_user_id_fkey;


