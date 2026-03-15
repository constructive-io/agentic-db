-- Deploy: schemas/agent_db_users_public/tables/role_types/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/role_types/table


ALTER TABLE agent_db_users_public.role_types 
  ADD COLUMN name citext;

