-- Revert: schemas/agent_db_users_public/tables/users/columns/user_id/column


ALTER TABLE agent_db_users_public.users 
  DROP COLUMN user_id RESTRICT;


