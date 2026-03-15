-- Deploy: schemas/agent_db_users_public/tables/users/columns/username/alterations/alt0000003222
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/username/column


ALTER TABLE "agent_db_users_public".users 
  ADD CONSTRAINT users_username_chk 
    CHECK (character_length(username) <= 256);

