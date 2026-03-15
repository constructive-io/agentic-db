-- Deploy: schemas/agent_db_users_public/tables/users/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


ALTER TABLE "agent_db_users_public".users 
  ADD COLUMN id uuid;

