-- Revert: schemas/agent_db_users_public/tables/users/columns/display_name/alterations/alt0000003223


ALTER TABLE "agent_db_users_public".users 
  DROP CONSTRAINT users_display_name_chk;


