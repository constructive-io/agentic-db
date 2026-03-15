-- Deploy: schemas/agent_db_users_public/tables/users/columns/display_name/alterations/alt0000001709
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/display_name/column


ALTER TABLE "agent_db_users_public".users 
  ADD CONSTRAINT users_display_name_chk 
    CHECK (character_length(display_name) <= 256);

