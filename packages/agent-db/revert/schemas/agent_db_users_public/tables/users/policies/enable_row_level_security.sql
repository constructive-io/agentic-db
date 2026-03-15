-- Revert: schemas/agent_db_users_public/tables/users/policies/enable_row_level_security


ALTER TABLE agent_db_users_public.users 
  DISABLE ROW LEVEL SECURITY;


