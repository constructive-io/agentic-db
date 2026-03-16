-- Deploy: schemas/agent_db_users_public/tables/users/columns/type/alterations/alt0000000862
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/type/column



ALTER TABLE "agent_db_users_public".users 
    ALTER COLUMN type SET DEFAULT 1;

