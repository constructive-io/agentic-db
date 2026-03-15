-- Revert: schemas/agent_db_users_public/tables/users/columns/username/alterations/alt0000003222


ALTER TABLE "agent_db_users_public".users 
  DROP CONSTRAINT users_username_chk;


