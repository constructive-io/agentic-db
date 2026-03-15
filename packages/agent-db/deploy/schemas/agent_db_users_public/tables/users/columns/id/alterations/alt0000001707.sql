-- Deploy: schemas/agent_db_users_public/tables/users/columns/id/alterations/alt0000001707
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/id/column



ALTER TABLE "agent_db_users_public".users 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

