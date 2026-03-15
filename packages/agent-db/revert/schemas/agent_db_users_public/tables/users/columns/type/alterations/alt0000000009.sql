-- Revert: schemas/agent_db_users_public/tables/users/columns/type/alterations/alt0000000009


ALTER TABLE agent_db_users_public.users 
  ALTER COLUMN type DROP NOT NULL;


