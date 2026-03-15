-- Revert: schemas/agent_db_users_public/tables/users/columns/user_id/alterations/alt0000001189


ALTER TABLE agent_db_users_public.users 
  ALTER COLUMN user_id DROP NOT NULL;


