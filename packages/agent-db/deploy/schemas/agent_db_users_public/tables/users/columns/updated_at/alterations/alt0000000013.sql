-- Deploy: schemas/agent_db_users_public/tables/users/columns/updated_at/alterations/alt0000000013
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/updated_at/column


ALTER TABLE agent_db_users_public.users 
  ALTER COLUMN updated_at SET DEFAULT now();

