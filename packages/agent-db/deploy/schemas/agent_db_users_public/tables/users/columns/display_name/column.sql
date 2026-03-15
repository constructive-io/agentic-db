-- Deploy: schemas/agent_db_users_public/tables/users/columns/display_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE agent_db_users_public.users 
  ADD COLUMN display_name text;

