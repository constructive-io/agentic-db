-- Revert: schemas/agent_db_users_public/tables/users/columns/username/column


ALTER TABLE agent_db_users_public.users 
  DROP COLUMN username RESTRICT;


