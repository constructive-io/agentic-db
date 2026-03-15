-- Deploy: schemas/agent_db_users_public/tables/users/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE agent_db_users_public.users 
  ENABLE ROW LEVEL SECURITY;

