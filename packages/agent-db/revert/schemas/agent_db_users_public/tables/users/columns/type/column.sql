-- Revert: schemas/agent_db_users_public/tables/users/columns/type/column


ALTER TABLE agent_db_users_public.users 
  DROP COLUMN type RESTRICT;


